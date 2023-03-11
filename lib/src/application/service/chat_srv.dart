part of '../service.dart';

class ChatService {
  final Dio _dio;
  ChatService(this._dio);
  Future<MsgGpt35Rsp> chat(MsgGpt35Req msg) async {
    final rsp = await _dio.post('/bot/chat/gpt35', data: msg.toJson());
    return MsgGpt35Rsp.fromJson(rsp.data);
  }
}
