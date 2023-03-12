import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:mind_ai/src/application/provider.dart';
import 'package:mind_ai/src/domain/domain.dart';
import 'package:mind_ai/src/infra/ui/router.dart';
import 'package:mind_ai/src/infra/ui/widget.dart';
import 'package:provider_sidecar/provider_sidecar_ex.dart';

class ChatPage extends StatefulWidget {
  final String chatId;

  const ChatPage({Key? key, required this.chatId}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    // 此处添加的 ChatModel只在本页内有效
    return ChangeNotifierProxyProvider<AcctModel?, ChatModel?>(
      noDispose: true,
      create: (_) => null,
      update: (c, m, b) =>
          m?.chats.firstWhereOrNull((e) => e.id == widget.chatId),
      child: MdScaffold(
        appBar: AppBar(
          title: const Text("MindAI Chat"),
        ),
        body: const ChatScreen(),
      ),
    );
  }
}

///

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen>
    with OnInitStateMx2<ChatScreen, AcctModel?, ChatModel?> {
  late final TextEditingController controller;
  late final ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
    scrollController = ScrollController();
  }

  @override
  Iterable<StreamSubscription?> onInitState(
    ScaffoldMessengerState msgr,
    AcctModel? a,
    ChatModel? b,
  ) sync* {
    yield a?.events.listen((e) => e.whenOrNull(
          chatCreated: (id) => ChatRoute(chatId: id).go(context),
        ));
    yield b?.events.listen((event) {
      event.whenOrNull(
        receiveError: (e) => msgr.showMaterialBanner(MaterialBanner(
          content: Text("消息出错,请尝试重新发送"),
          actions: [
            ElevatedButton(
              onPressed: () => b.add(const ChatEvt.retry()),
              child: Text("重新发送"),
            )
          ],
        )),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Consumer<ChatModel?>(
        builder: (c, mChat, _) {
          if (mChat == null) {
            return Center(
              child: TextButton(
                  onPressed: () => c.read<AcctModel>().createChat(),
                  child: const Text("新建聊天")),
            );
          }

          return Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: SingleChildScrollView(
                  controller: scrollController,
                  reverse: true,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      for (final m in mChat.state.content)
                        ListTile(
                          title: Text(m.message.role),
                          subtitle: SelectableText(m.message.content),
                        ),
                    ],
                  ),
                ),
              ),
              // 添加一个文字输入框，以及发送按钮
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: controller,
                      decoration: const InputDecoration(
                        hintText: '请输入内容',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.send),
                    onPressed: () {
                      mChat.add(ChatEvt.ask(controller.text));
                      controller.clear();
                    },
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}

class ChatModelSwitcher extends StatefulWidget {
  const ChatModelSwitcher({
    super.key,
  });

  @override
  State<ChatModelSwitcher> createState() => _ChatModelSwitcherState();
}

class _ChatModelSwitcherState extends State<ChatModelSwitcher> {
  late ModelTp chosenTp;

  @override
  void initState() {
    chosenTp = ModelTp.gpt35turbo;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<ModelTp>(
        value: chosenTp,
        selectedItemBuilder: (c) {
          final style =
              Theme.of(c).textTheme.titleMedium!.copyWith(color: Colors.white);
          return [
            Center(child: Text('GPT-3.5', style: style)),
          ];
        },
        items: const [
          DropdownMenuItem(
            value: ModelTp.gpt35turbo,
            child: Text('GPT-3.5'),
          ),
        ],
        onChanged: (tp) {
          setState(() {
            chosenTp = tp!;
          });
        },
      ),
    );
  }
}
