import 'package:dio/dio.dart';
import 'package:mind_ai/src/config/pubspec.yaml.g.dart';

import '../config/const.dart';
import '../domain/domain.dart';

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

final chatService = ChatService();

class ChatService {
  Future<MsgGpt35Rsp> chat(MsgGpt35Req msg) async {
    final rsp = await _dio.post('/bot/chat/gpt35', data: msg.toJson());
    return MsgGpt35Rsp.fromJson(rsp.data);
  }
}
