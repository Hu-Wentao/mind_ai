// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import '../inter/inter.dart';

enum ModelTp {
  gptChat('revChatGPT.V1'),
  gpt35turbo('gpt-3.5-turbo');

  final String modelId;
  const ModelTp(this.modelId);
}

class MsgGpt35Rsp extends Msg<Gpt35ChoicesDto> {
  const MsgGpt35Rsp({
    required super.from_id,
    required super.to_id,
    required super.content,
    required super.model_id,
  });

  factory MsgGpt35Rsp.fromJson(Map<String, dynamic> json) {
    final dto = MsgDto.fromJson(json);
    final content = (jsonDecode(dto.content) as List<dynamic>)
        .map((e) => Gpt35ChoicesDto.fromJson(e))
        .toList();
    return MsgGpt35Rsp(
      from_id: dto.from_id,
      to_id: dto.to_id,
      content: content,
      model_id: dto.model_id,
    );
  }

  MsgGpt35Rsp mergeContent(MsgGpt35Rsp msg) => MsgGpt35Rsp(
        from_id: from_id,
        to_id: to_id,
        content: [...content, ...msg.content],
        model_id: model_id,
      );

  MsgGpt35Rsp addContent(Gpt35ChoicesDto dto) => MsgGpt35Rsp(
        from_id: from_id,
        to_id: to_id,
        content: [...content, dto],
        model_id: model_id,
      );

  MsgGpt35Req toReq({List<Gpt35ChoicesDto>? ct}) {
    return MsgGpt35Req(
      from_id: from_id,
      to_id: to_id,
      content: (ct ?? content)
          .map((e) => MsgGpt35ContentDto(
                role: e.message.role,
                content: e.message.content,
              ))
          .toList(),
      model_id: model_id,
    );
  }

  /// [stop] 默认3，保留最后3轮对话；为4时，与达芬奇3一致
  MsgGpt35Req toReqByStop({int stop = 3}) {
    assert(stop >= 0, 'stop must >= 0');
    // 倒序while遍历content, 遇到stop，stop--，直到stop==0，记录下标
    var idx = content.length;
    while (idx-- > 1) {
      if (content[idx].finish_reason == 'stop') {
        if (stop-- == 0) break;
      }
    }
    return toReq(ct: content.sublist(idx));
  }
}

class MsgGpt35Req extends Msg<MsgGpt35ContentDto> {
  MsgGpt35Req({
    required super.from_id,
    required super.to_id,
    required super.content,
    required super.model_id,
  });

  factory MsgGpt35Req.fromJson(Map<String, dynamic> json) {
    final dto = MsgDto.fromJson(json);
    final content = (jsonDecode(dto.content) as List<dynamic>)
        .map((e) => MsgGpt35ContentDto.fromJson(e))
        .toList();
    return MsgGpt35Req(
      from_id: dto.from_id,
      to_id: dto.to_id,
      content: content,
      model_id: dto.model_id,
    );
  }
  toJson() => MsgDto(
        content: jsonEncode(content),
        from_id: from_id,
        to_id: to_id,
        model_id: model_id,
      ).toJson();
}

class Msg<DTO> {
  final String from_id;
  final String to_id;
  final List<DTO> content;
  final String model_id;

  const Msg({
    required this.from_id,
    required this.to_id,
    required this.content,
    required this.model_id,
  });
}
