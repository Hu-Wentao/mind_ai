import 'package:dio/dio.dart';
import 'package:mind_ai/domain/domain.dart';

import '../domain/config/const.dart';

final dio = Dio(BaseOptions(
  baseUrl: 'http://0.0.0.0:21772',
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
  Future<MsgGpt35> chat(MsgGpt35 msgs) async {
    final data = msgs;
    final response = await dio.post('/bot/chat/gpt35', data: data);
    return MsgGpt35.fromJson(response.data);
  }
}

class ChatCompletionDto {
  final String id;
  final String object;
  final int created;
  final List<CompletionChoiceDto> choices;
  final UsageDto usage;

  ChatCompletionDto({
    required this.id,
    required this.object,
    required this.created,
    required this.choices,
    required this.usage,
  });

  factory ChatCompletionDto.fromJson(Map<String, dynamic> json) {
    return ChatCompletionDto(
      id: json['id'],
      object: json['object'],
      created: json['created'],
      choices: (json['choices'] as List)
          .map((choice) => CompletionChoiceDto.fromJson(choice))
          .toList(),
      usage: UsageDto.fromJson(json['usage']),
    );
  }
}

class CompletionChoiceDto {
  final int index;
  final MsgDto message;
  final String finishReason;

  CompletionChoiceDto({
    required this.index,
    required this.message,
    required this.finishReason,
  });

  factory CompletionChoiceDto.fromJson(Map<String, dynamic> json) {
    return CompletionChoiceDto(
      index: json['index'],
      message: MsgDto.fromJson(json['message']),
      finishReason: json['finish_reason'],
    );
  }
}

class MsgDto {
  final String role;
  final String content;

  MsgDto({
    required this.role,
    required this.content,
  });

  factory MsgDto.fromJson(Map<String, dynamic> json) {
    return MsgDto(
      role: json['role'],
      content: json['content'],
    );
  }
  // toJson
  Map<String, dynamic> toJson() {
    return {
      'role': role,
      'content': content,
    };
  }
}

class UsageDto {
  final int promptTokens;
  final int completionTokens;
  final int totalTokens;

  UsageDto({
    required this.promptTokens,
    required this.completionTokens,
    required this.totalTokens,
  });

  factory UsageDto.fromJson(Map<String, dynamic> json) {
    return UsageDto(
      promptTokens: json['prompt_tokens'],
      completionTokens: json['completion_tokens'],
      totalTokens: json['total_tokens'],
    );
  }
}
