part of '../provider.dart';

@freezed
class AcctEvt with _$AcctEvt {
  // 创建聊天
  const factory AcctEvt.createChat() = _AcctEvtCreateChat;

  // 聊天创建成功
  const factory AcctEvt.chatCreated(String id) = _AcctEvtChatCreated;

  // 加载聊天列表
  const factory AcctEvt.loadChats() = _AcctEvtLoadChats;
}

class AcctModel extends SidecarModel<AcctEvt, String> {
  AcctModel({required super.id}) {
    // add(const AcctEvt.loadChats());
    // 创建一个默认的聊天室
    // add(const AcctEvt.createChat());
  }

  List<ChatModel> chats = [];

  @override
  FutureOr<void> onEvent(AcctEvt evt) => evt.when(
        createChat: createChat,
        loadChats: loadChats,
        chatCreated: (_) {},
      );
}

extension AcctChatX on AcctModel {
  createChat() {
    // todo 后端获取
    final chat = ChatModel.create();
    chats.add(chat);
    add(AcctEvt.chatCreated(chat.id));
    setState('创建聊天[$chat]');
  }

  loadChats() async {
    // todo 后端获取聊天列表
    setState('加载聊天列表');
  }
}
