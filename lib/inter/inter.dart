// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
part 'inter.freezed.dart';

@freezed
class MsgDto with _$MsgDto {
  const factory MsgDto({
    required String from_id,
    required String to_id,
    required String content,
    required String conversation_id,
    required String parent_id,
    required String model_id,
  }) = _MsgDto;
  factory MsgDto.fromJson(Map<String, dynamic> json) => _$MsgDtoFromJson(json);
}

@freezed
class Gpt35ContentDto with _$Gpt35ContentDto {
  const factory Gpt35ContentDto({
    required String role,
    required String content,
  }) = _Gpt35ContentDto;
  factory Gpt35ContentDto.fromJson(Map<String, dynamic> json) =>
      _$Gpt35ContentDtoFromJson(json);
}
