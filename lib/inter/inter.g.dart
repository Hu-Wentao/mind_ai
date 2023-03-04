// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MsgDto _$$_MsgDtoFromJson(Map<String, dynamic> json) => _$_MsgDto(
      from_id: json['from_id'] as String,
      to_id: json['to_id'] as String,
      content: json['content'] as String,
      conversation_id: json['conversation_id'] as String?,
      parent_id: json['parent_id'] as String?,
      model_id: json['model_id'] as String,
    );

Map<String, dynamic> _$$_MsgDtoToJson(_$_MsgDto instance) => <String, dynamic>{
      'from_id': instance.from_id,
      'to_id': instance.to_id,
      'content': instance.content,
      'conversation_id': instance.conversation_id,
      'parent_id': instance.parent_id,
      'model_id': instance.model_id,
    };

_$_Gpt35ChoicesDto _$$_Gpt35ChoicesDtoFromJson(Map<String, dynamic> json) =>
    _$_Gpt35ChoicesDto(
      index: json['index'] as int,
      message:
          MsgGpt35ContentDto.fromJson(json['message'] as Map<String, dynamic>),
      finish_reason: json['finish_reason'] as String,
    );

Map<String, dynamic> _$$_Gpt35ChoicesDtoToJson(_$_Gpt35ChoicesDto instance) =>
    <String, dynamic>{
      'index': instance.index,
      'message': instance.message,
      'finish_reason': instance.finish_reason,
    };

_$_MsgGpt35ContentDto _$$_MsgGpt35ContentDtoFromJson(
        Map<String, dynamic> json) =>
    _$_MsgGpt35ContentDto(
      role: json['role'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$$_MsgGpt35ContentDtoToJson(
        _$_MsgGpt35ContentDto instance) =>
    <String, dynamic>{
      'role': instance.role,
      'content': instance.content,
    };
