import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mind_ai/src/application/provider.dart';
import 'package:provider_sidecar/provider_sidecar_ex.dart';
import 'package:url_launcher/url_launcher.dart';

import 'src/domain/domain.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AppProvider>(create: (_) => AppProvider()),
        ChangeNotifierProvider<ChatProvider>(create: (_) => ChatProvider()),
      ],
      child: MaterialApp(
        title: 'Mind AI',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with OnInitStateMx<HomePage, AppProvider> {
  @override
  StreamSubscription? onInitState(ScaffoldMessengerState msgr, AppProvider a) {
    return a.events.listen((event) {
      event.whenOrNull(
        needUpdate: (_) {
          // 安卓/ios已自动处理（包括弹dialog）；
          // mac/win会后台更新
        },
      );
    });
  }

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
            Tooltip(
              message: '问题反馈/功能建议',
              child: IconButton(
                onPressed: () => launchUrl(
                    Uri.parse('https://support.qq.com/product/514606')),
                icon: const Icon(Icons.feedback_rounded),
              ),
            )
          ],
        ),
        body: const ChatScreen(),
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
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen>
    with OnInitStateMx<ChatScreen, ChatProvider> {
  late final TextEditingController controller;
  late final ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
    scrollController = ScrollController();
  }

  @override
  StreamSubscription? onInitState(ScaffoldMessengerState msgr, ChatProvider a) {
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Consumer<ChatProvider>(
        builder: (c, p, _) => Column(
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
                    for (final m in p.state.content)
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
                    p.add(ChatEvt.ask(controller.text));
                    controller.clear();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
