import 'dart:io';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../config/config.dart';
import '../domain/domain.dart';

part 'service.freezed.dart';
part 'service.g.dart';

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

///
final chatService = ChatService();

class ChatService {
  Future<MsgGpt35Rsp> chat(MsgGpt35Req msg) async {
    final rsp = await _dio.post('/bot/chat/gpt35', data: msg.toJson());
    return MsgGpt35Rsp.fromJson(rsp.data);
  }
}

@freezed
class AppUpdateInfo with _$AppUpdateInfo {
  const factory AppUpdateInfo({
    required String version,
    String? desc,
    String? url,
  }) = _AppUpdateInfo;
  // fromJson
  factory AppUpdateInfo.fromJson(Map<String, dynamic> json) =>
      _$AppUpdateInfoFromJson(json);
}

///
final appService = AppService();

class AppService {
  /// 检查App更新，如果没有更新返回null
  Future<AppUpdateInfo?> checkVersion() async {
    final rsp = await _dio.get('/client/version', queryParameters: {
      "platform": Platform.operatingSystem,
      'v': version,
    });
    final info = AppUpdateInfo.fromJson(rsp.data);
    if (info.version == version) return null;
    return info;
  }
}
