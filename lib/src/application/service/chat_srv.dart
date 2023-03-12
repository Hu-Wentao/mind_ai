part of '../service.dart';

class ChatService {
  final Dio _dio;
  final Supabase backend;
  final OpenAI openAI;

  ChatService(this._dio, this.backend, this.openAI);

  // 接收sk，以及msg
  Future<MsgGpt35Rsp> chat({
    required String sk,
    required MsgGpt35Req msg,
  }) async {
    // set sk
    sl<OpenAIInterceptor>().sk = sk;

    const modelId = 'gpt-3.5-turbo';
    final msgLs = msg.content
        .map((e) => OpenAIChatCompletionChoiceMessageModel(
            role: e.role, content: e.content))
        .toList();
    final rsp = await openAI.chat.create(
      model: modelId,
      messages: msgLs,
    );
    final rspContent = rsp.choices
        .map((e) => Gpt35ChoicesDto(
              index: e.index,
              message: MsgGpt35ContentDto(
                role: e.message.role,
                content: e.message.content,
              ),
              finish_reason: e.finishReason,
            ))
        .toList();
    return MsgGpt35Rsp(
      from_id: '',
      to_id: '',
      model_id: modelId,
      content: rspContent,
    );
  }

  Future<String> getSk() => backend.getSk();
}
