import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mind_ai/src/application/provider.dart';
import 'package:mind_ai/src/infra/ui/dialog.dart';
import 'package:provider_sidecar/provider_sidecar_ex.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with OnInitStateMx<HomePage, AppModel> {
  @override
  StreamSubscription? onInitState(ScaffoldMessengerState msgr, AppModel a) {
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
            Tooltip(
              message: '问题反馈/功能建议',
              child: IconButton(
                onPressed: () => showConfirmDialog(
                  context: context,
                  title: "是否要提交 问题反馈/功能建议 ？",
                  onConfirm: () => launchUrl(
                      Uri.parse('https://support.qq.com/product/514606')),
                ),
                icon: const Icon(Icons.feedback_rounded),
              ),
            )
          ],
        ),
      ),
    );
  }
}
