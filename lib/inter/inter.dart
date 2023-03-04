// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';
part 'inter.freezed.dart';
part 'inter.g.dart';

@freezed
class MsgDto with _$MsgDto {
  const factory MsgDto({
    required String from_id,
    required String to_id,
    required String content,
    String? conversation_id,
    String? parent_id,
    required String model_id,
  }) = _MsgDto;
  factory MsgDto.fromJson(Map<String, dynamic> json) => _$MsgDtoFromJson(json);
}

///
/// {
///   "index": 0,
///   "message": {
///     "role": "assistant",
///     "content": "\n\nHello there, how may I assist you today?",
///   },
///   "finish_reason": "stop"
/// }
@freezed
class Gpt35ChoicesDto with _$Gpt35ChoicesDto {
  const factory Gpt35ChoicesDto({
    required int index,
    required MsgGpt35ContentDto message,
    required String finish_reason,
  }) = _Gpt35ChoicesDto;
  factory Gpt35ChoicesDto.fromJson(Map<String, dynamic> json) =>
      _$Gpt35ChoicesDtoFromJson(json);
}

@freezed
class MsgGpt35ContentDto with _$MsgGpt35ContentDto {
  const factory MsgGpt35ContentDto({
    required String role,
    required String content,
  }) = _MsgGpt35ContentDto;
  factory MsgGpt35ContentDto.fromJson(Map<String, dynamic> json) =>
      _$MsgGpt35ContentDtoFromJson(json);
}
