import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_arch_core/get_arch_core.dart';
import 'package:platform_device_id/platform_device_id.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../config/config.dart';
import '../domain/domain.dart';

part 'service.freezed.dart';

part 'service.g.dart';

part 'service/app_srv.dart';

part 'service/chat_srv.dart';

@module
abstract class Service {
  @lazySingleton
  Dio dio() {
    final d = Dio(BaseOptions(
      baseUrl: baseUrl,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $jwt',
        'Version': version
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
  AppService appService(Dio dio, Supabase s) => AppService(dio, s);

  @lazySingleton
  ChatService chatService(Dio dio) => ChatService(dio);
}
