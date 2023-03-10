import 'dart:async';

import 'package:flutter/material.dart';

import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:get_arch_core/get_arch_core.dart';
import 'package:get_sweet/get_sweet.dart';
import 'package:logging/logging.dart';
import 'package:mind_ai/src/application.dart';
import 'package:mind_ai/src/config/injector.dart';
import 'package:mind_ai/src/infra/app.dart';
import 'package:provider_sidecar/provider_sidecar.dart';
import 'main_dev.dart' as dev;
import 'main_tst.dart' as tst;
import 'main_prod.dart' as prod;

runApplication(MindAIConfig config) => MindAIApplication(
      onBeforeAppInit: (g, c) async =>
          WidgetsFlutterBinding.ensureInitialized(),
      onBeforeAppRun: (g) async {
        // 配置 ProviderSidecar Log
        final sidecarLogger = Logger("sidecar");
        SidecarLoggerMx.setLogger(sidecarLogger.info);
      },
      onApplicationRun: (g, c) async => runApp(MindAIApp(sl: g, config: c)),
      onAfterAppRun: () async {
        if (!kIsWeb) {
          if (Platform.isAndroid) {
            // 设置状态栏背景及颜色
            const SystemUiOverlayStyle(statusBarColor: Colors.transparent)
                .let(SystemChrome.setSystemUIOverlayStyle);
            // SystemChrome.setEnabledSystemUIOverlays([]); //隐藏状态栏
          }
        }
      },
      initPackageDI: initPackageDI,
    ).run(
      GetIt.I,
      config,
    );

/// 默认dev环境
main() {
  final sign = EnvSign.values[const int.fromEnvironment('EnvSign')];
  switch (sign) {
    case EnvSign.dev:
      return dev.main();
    case EnvSign.test:
      return tst.main();
    case EnvSign.prod:
      return prod.main();
  }
}
