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
class Gpt35ContentDto with _$Gpt35ContentDto {
  const factory Gpt35ContentDto({
    required int index,
    required Gpt35ContentMsgDto message,
    required String finishReason,
  }) = _Gpt35ContentDto;
  factory Gpt35ContentDto.fromJson(Map<String, dynamic> json) =>
      _$Gpt35ContentDtoFromJson(json);
}

@freezed
class Gpt35ContentMsgDto with _$Gpt35ContentMsgDto {
  const factory Gpt35ContentMsgDto({
    required String role,
    required String content,
  }) = _Gpt35ContentMsgDto;
  factory Gpt35ContentMsgDto.fromJson(Map<String, dynamic> json) =>
      _$Gpt35ContentMsgDtoFromJson(json);
}
