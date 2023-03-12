part of '../provider.dart';

@freezed
class ChatEvt with _$ChatEvt {
  const factory ChatEvt.ask(String msg) = _ChatEvtAsk;

  const factory ChatEvt.receive(MsgGpt35Rsp rsp) = _ChatEvtReceive;

  const factory ChatEvt.receiveError(String msg) = _ChatEvtReceiveError;

  const factory ChatEvt.retry() = _ChatEvtRetry;
}

class ChatModel extends SidecarModel<ChatEvt, String> {
  MsgGpt35Rsp state = const MsgGpt35Rsp(
    from_id: 'from_id',
    to_id: 'to_id',
    content: [],
    model_id: 'model_id',
  );

  String sk = '';

  ChatModel({required super.id});

  factory ChatModel.create() => ChatModel(id: sl<Uuid>().v4());

  String get modelTp => state.model_id;

  @override
  FutureOr<void> onEvent(ChatEvt evt) => evt.when(
        ask: ask,
        receive: receive,
        receiveError: (e) {},
        retry: retry,
      );

  ask(String msg) async {
    if (msg.isEmpty) return;
    // 检查sk
    if (sk.isEmpty) {
      sk = await _chatSrv.getSk();
    }
    log('sk [$sk]');

    // 更新状态
    final content = Gpt35ChoicesDto(
      index: state.content.length,
      message: MsgGpt35ContentDto(
        role: 'user',
        content: msg,
      ),
      finish_reason: '',
    );
    state = state.addContent(content);
    // 发送状态中的消息
    await _sendMsgByState();
  }

  receive(MsgGpt35Rsp rsp) {
    state = state.mergeContent(rsp);
    setState('receive [$rsp]');
  }

  retry() async {
    await _sendMsgByState();
  }

  _sendMsgByState() async {
    // 不发送全部历史，从finish_reason == stop截取
    // 普通用户给3轮对话，注册用户给5轮对话
    final sender = state.toReqByStop(stop: 3);
    setState('ask.send [${sender.toJson()}]');
    try {
      final nMsg = await _chatSrv.chat(
        sk: sk,
        msg: sender,
      );
      add(ChatEvt.receive(nMsg));
    } catch (e, s) {
      log('ask.error [$e] [$s]');
      add(ChatEvt.receiveError('$e'));
    }
  }

  ChatService get _chatSrv => sl<ChatService>();
}
