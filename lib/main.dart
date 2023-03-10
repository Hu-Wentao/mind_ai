import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mind_ai/src/application/provider.dart';
import 'package:mind_ai/src/infra/ui/router.dart';
import 'package:provider_sidecar/provider_sidecar_ex.dart';

void main() {
  runApp(const MyApp());
}

final _router = GoRouter(
    // 必须打开,否则全局logging都将被取消
    debugLogDiagnostics: true,
    initialLocation: const SplashRoute().location,
    routes: $appRoutes,
    // routes: [
    //   $splashRoute,
    // ],
    errorBuilder: (c, s) {
      return Scaffold(
        appBar: AppBar(title: const Text("导航出错了")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("找不到路径：${s.fullpath}"),
            TextButton(
                onPressed: () => const SplashRoute().go(c),
                child: const Text("回到首页")),
          ],
        ),
      );
    });

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AppModel>(create: (_) => AppModel()),
        ChangeNotifierProxyProvider<AppModel, AcctModel?>(
          create: (_) => null,
          update: (c, m, b) => m.chosenAcct,
        ),
        // 通过路由确定特定ChatModel
        // ChangeNotifierProxyProvider<AcctModel?, ChatModel?>(
        //   create: (_) => null,
        //   update: (c, m, b) => m?.chosenChat,
        // ),
      ],
      child: MaterialApp.router(
        title: 'Mind AI',
        theme: ThemeData(primarySwatch: Colors.blue),
        // 配置 router
        routeInformationProvider: _router.routeInformationProvider,
        routeInformationParser: _router.routeInformationParser,
        routerDelegate: _router.routerDelegate,
      ),
    );
  }
}
