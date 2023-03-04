import 'package:dio/dio.dart';
import 'package:mind_ai/domain/domain.dart';

import '../domain/config/const.dart';

final dio = Dio(BaseOptions(
  baseUrl: baseUrl,
  headers: {
    'Content-Type': 'application/json',
    'Authorization': 'Bearer $apiKey',
  },
))
  ..interceptors.add(LogInterceptor(
    requestBody: true,
    responseBody: true,
  ));

final chatService = ChatService();

class ChatService {
  Future<MsgGpt35Rsp> chat(MsgGpt35Req msg) async {
    final rsp = await dio.post('/bot/chat/gpt35', data: msg.toJson());
    return MsgGpt35Rsp.fromJson(rsp.data);
  }
}
