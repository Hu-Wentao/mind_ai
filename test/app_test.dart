import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get_arch_core/get_arch_core.dart';
import 'package:get_sweet/get_sweet.dart';
import 'package:logging/logging.dart';
import 'package:mind_ai/src/application.dart';
import 'package:mind_ai/src/application/service.dart';
import 'package:mind_ai/src/config/injector.dart';
import 'package:provider_sidecar/provider_sidecar_ex.dart';

main() async {
  final env = File('env/prod.json').readAsStringSync().let(jsonDecode);
  final backendUrl = env['BACKEND_URL'];
  final backendAnonKey = env['BACKEND_ANON_KEY'];
  await runApplication(MindAIConfig(
    sign: EnvSign.test,
    name: 'mind_ai_test',
    version: '1.0.0',
    packAt: DateTime.now(),
    baseUrl: 'baseUrl',
    jwt: 'jwt',
    backendUrl: backendUrl,
    backendAnonKey: backendAnonKey,
  ));
}

runApplication(MindAIConfig config) => MindAIApplication(
      onBeforeAppInit: (g, c) async =>
          WidgetsFlutterBinding.ensureInitialized(),
      onBeforeAppRun: (g) async {
        // 配置 ProviderSidecar Log
        final sidecarLogger = Logger("sidecar");
        SidecarLoggerMx.setLogger(sidecarLogger.info);
      },
      onApplicationRun: (g, c) async {
        final v = sl<AppService>().checkVersion();
        print("v $v");
        // runApp(MindAIApp(sl: g, config: c));
      },
      // onAfterAppRun: () async {
      //   if (!kIsWeb) {
      //     if (Platform.isAndroid) {
      //       // 设置状态栏背景及颜色
      //       const SystemUiOverlayStyle(statusBarColor: Colors.transparent)
      //           .let(SystemChrome.setSystemUIOverlayStyle);
      //       // SystemChrome.setEnabledSystemUIOverlays([]); //隐藏状态栏
      //     }
      //   }
      // },
      initPackageDI: initPackageDI,
    ).run(
      GetIt.I,
      config,
    );
