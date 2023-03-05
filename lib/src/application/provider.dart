import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mind_ai/src/application/service.dart';
import 'package:mind_ai/src/domain/domain.dart';
import 'package:provider_sidecar/provider_sidecar.dart';

import '../inter/inter.dart';
part 'provider.freezed.dart';

@freezed
class ChatEvt with _$ChatEvt {
  const factory ChatEvt.ask(String msg) = _ChatEvtAsk;
  const factory ChatEvt.receive(MsgGpt35Rsp rsp) = _ChatEvtReceive;
}

class ChatProvider extends SidecarProvider<ChatEvt, MsgGpt35Rsp> {
  ChatProvider({
    super.state = const MsgGpt35Rsp(
      from_id: 'from_id',
      to_id: 'to_id',
      content: [],
      model_id: 'model_id',
    ),
  });

  @override
  FutureOr<void> onEvent(ChatEvt evt) => evt.when(
        ask: ask,
        receive: receive,
      );

  ask(String msg) async {
    if (msg.isEmpty) return;
    final content = Gpt35ChoicesDto(
      index: state.content.length,
      message: MsgGpt35ContentDto(
        role: 'user',
        content: msg,
      ),
      finish_reason: '',
    );
    setState(
      state.addContent(content),
      'ask [$msg]',
    );
    // 不发送全部历史，从finish_reason == stop截取
    // 普通用户给3轮对话，注册用户给5轮对话
    final sender = state.toReqByStop(stop: 3);
    setState(
      null,
      'ask.send [$sender]',
    );
    final nMsg = await chatService.chat(sender);
    add(ChatEvt.receive(nMsg));
  }

  receive(MsgGpt35Rsp rsp) {
    setState(
      state.mergeContent(rsp),
      'receive [$rsp]',
    );
  }
}
