import 'package:flutter/material.dart';
import 'package:mind_ai/src/application/service.dart';

import 'src/domain/domain.dart';
import 'src/inter/inter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mind AI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Mind AI',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
          ),
          actions: [
            Container(
                alignment: Alignment.center,
                child: Text(
                  "当前模型：",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: Colors.white),
                )),
            const ChatModelSwitcher(),
          ],
        ),
        body: const Padding(
          padding: EdgeInsets.all(8.0),
          child: ChatScreen(),
        ),
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
      child: DropdownButton(
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

class ChatScreen extends StatefulWidget {
  const ChatScreen({
    super.key,
  });

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  late final TextEditingController controller;
  MsgGpt35Rsp msg = const MsgGpt35Rsp(
    from_id: 'from_id',
    to_id: 'to_id',
    content: [],
    model_id: 'model_id',
  );

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  for (final m in msg.content)
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
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.send),
                onPressed: sendMsg,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future<void> sendMsg() async {
    if (controller.text.isEmpty) return;
    final content = Gpt35ChoicesDto(
      index: msg.content.length,
      message: MsgGpt35ContentDto(
        role: 'user',
        content: controller.text,
      ),
      finish_reason: '',
    );
    controller.clear();
    msg = msg.addContent(content);
    setState(() {});

    final nMsg = await chatService.chat(msg.toReq());
    msg = msg.mergeContent(nMsg);
    setState(() {});
  }
}
