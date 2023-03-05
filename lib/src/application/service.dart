import 'package:dio/dio.dart';

import '../config/const.dart';
import '../domain/domain.dart';


final dio = Dio(BaseOptions(
  baseUrl: baseUrl,
  headers: {
    'Content-Type': 'application/json',
    'Authorization': 'Bearer $jwt',
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
