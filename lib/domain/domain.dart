// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import '../inter/inter.dart';

enum ModelTp {
  gptChat('revChatGPT.V1'),
  gpt35turbo('gpt-3.5-turbo');

  final String modelId;
  const ModelTp(this.modelId);
}

class MsgGpt35 {
  final String from_id;
  final String to_id;
  final List<Gpt35ContentMsgDto> content;
  final String model_id;

  const MsgGpt35({
    required this.from_id,
    required this.to_id,
    required this.content,
    required this.model_id,
  });
  MsgGpt35 mergeContent(MsgGpt35 msg) => MsgGpt35(
        from_id: from_id,
        to_id: to_id,
        content: [...content, ...msg.content],
        model_id: model_id,
      );

  factory MsgGpt35.fromJson(Map<String, dynamic> json) {
    final dto = MsgDto.fromJson(json);
    final content = (jsonDecode(dto.content) as List<dynamic>)
        .map((e) => Gpt35ContentMsgDto.fromJson(e))
        .toList();
    return MsgGpt35(
      from_id: dto.from_id,
      to_id: dto.to_id,
      content: content,
      model_id: dto.model_id,
    );
  }
  Map<String, dynamic> toJson() {
    return MsgDto(
      from_id: from_id,
      to_id: to_id,
      content: jsonEncode(content),
      model_id: model_id,
    ).toJson();
  }
}
