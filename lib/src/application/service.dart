import 'dart:io';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_arch_core/get_arch_core.dart';
import 'package:platform_device_id/platform_device_id.dart';

import '../config/config.dart';
import '../domain/domain.dart';

part 'service.freezed.dart';
part 'service.g.dart';

part 'service/app_srv.dart';
part 'service/chat_srv.dart';

final _dio = Dio(BaseOptions(
  baseUrl: baseUrl,
  headers: {
    'Content-Type': 'application/json',
    'Authorization': 'Bearer $jwt',
    'Version': version
  },
))
  ..interceptors.add(LogInterceptor(
    requestBody: true,
    responseBody: true,
  ));

@module
abstract class Service {
  @lazySingleton
  Dio dio() => _dio;

  @lazySingleton
  AppService appService(Dio dio) => AppService(dio);

  @lazySingleton
  ChatService chatService(Dio dio) => ChatService(dio);
}
