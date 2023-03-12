import 'dart:io';

import 'package:dart_openai/openai.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_arch_core/get_arch_core.dart';
import 'package:mind_ai/src/application.dart';
import 'package:mind_ai/src/infra/cloud/backend.dart';
import 'package:platform_device_id/platform_device_id.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../domain/domain.dart';
import '../inter/inter.dart';

part 'service.freezed.dart';

part 'service.g.dart';

part 'service/app_srv.dart';

part 'service/chat_srv.dart';

@module
abstract class Service {
  @lazySingleton
  Dio dio(MindAIConfig cfg) {
    final d = Dio(BaseOptions(
      baseUrl: cfg.baseUrl,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${cfg.jwt}',
        'Version': cfg.version
      },
    ));
    if (!kReleaseMode) {
      d.interceptors.add(LogInterceptor(
        requestBody: true,
        responseBody: true,
      ));
    }
    return d;
  }

  @lazySingleton
  AppService appService(Dio dio, Supabase s, MindAIConfig cfg) =>
      AppService(dio, s, cfg);

  @lazySingleton
  ChatService chatService(Dio dio, Supabase b, OpenAI o) =>
      ChatService(dio, b, o);
}
