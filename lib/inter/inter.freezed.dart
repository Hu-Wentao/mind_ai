// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MsgDto _$MsgDtoFromJson(Map<String, dynamic> json) {
  return _MsgDto.fromJson(json);
}

/// @nodoc
mixin _$MsgDto {
  String get from_id => throw _privateConstructorUsedError;
  String get to_id => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get conversation_id => throw _privateConstructorUsedError;
  String get parent_id => throw _privateConstructorUsedError;
  String get model_id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MsgDtoCopyWith<MsgDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MsgDtoCopyWith<$Res> {
  factory $MsgDtoCopyWith(MsgDto value, $Res Function(MsgDto) then) =
      _$MsgDtoCopyWithImpl<$Res, MsgDto>;
  @useResult
  $Res call(
      {String from_id,
      String to_id,
      String content,
      String conversation_id,
      String parent_id,
      String model_id});
}

/// @nodoc
class _$MsgDtoCopyWithImpl<$Res, $Val extends MsgDto>
    implements $MsgDtoCopyWith<$Res> {
  _$MsgDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from_id = null,
    Object? to_id = null,
    Object? content = null,
    Object? conversation_id = null,
    Object? parent_id = null,
    Object? model_id = null,
  }) {
    return _then(_value.copyWith(
      from_id: null == from_id
          ? _value.from_id
          : from_id // ignore: cast_nullable_to_non_nullable
              as String,
      to_id: null == to_id
          ? _value.to_id
          : to_id // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      conversation_id: null == conversation_id
          ? _value.conversation_id
          : conversation_id // ignore: cast_nullable_to_non_nullable
              as String,
      parent_id: null == parent_id
          ? _value.parent_id
          : parent_id // ignore: cast_nullable_to_non_nullable
              as String,
      model_id: null == model_id
          ? _value.model_id
          : model_id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MsgDtoCopyWith<$Res> implements $MsgDtoCopyWith<$Res> {
  factory _$$_MsgDtoCopyWith(_$_MsgDto value, $Res Function(_$_MsgDto) then) =
      __$$_MsgDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String from_id,
      String to_id,
      String content,
      String conversation_id,
      String parent_id,
      String model_id});
}

/// @nodoc
class __$$_MsgDtoCopyWithImpl<$Res>
    extends _$MsgDtoCopyWithImpl<$Res, _$_MsgDto>
    implements _$$_MsgDtoCopyWith<$Res> {
  __$$_MsgDtoCopyWithImpl(_$_MsgDto _value, $Res Function(_$_MsgDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from_id = null,
    Object? to_id = null,
    Object? content = null,
    Object? conversation_id = null,
    Object? parent_id = null,
    Object? model_id = null,
  }) {
    return _then(_$_MsgDto(
      from_id: null == from_id
          ? _value.from_id
          : from_id // ignore: cast_nullable_to_non_nullable
              as String,
      to_id: null == to_id
          ? _value.to_id
          : to_id // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      conversation_id: null == conversation_id
          ? _value.conversation_id
          : conversation_id // ignore: cast_nullable_to_non_nullable
              as String,
      parent_id: null == parent_id
          ? _value.parent_id
          : parent_id // ignore: cast_nullable_to_non_nullable
              as String,
      model_id: null == model_id
          ? _value.model_id
          : model_id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MsgDto implements _MsgDto {
  const _$_MsgDto(
      {required this.from_id,
      required this.to_id,
      required this.content,
      required this.conversation_id,
      required this.parent_id,
      required this.model_id});

  factory _$_MsgDto.fromJson(Map<String, dynamic> json) =>
      _$$_MsgDtoFromJson(json);

  @override
  final String from_id;
  @override
  final String to_id;
  @override
  final String content;
  @override
  final String conversation_id;
  @override
  final String parent_id;
  @override
  final String model_id;

  @override
  String toString() {
    return 'MsgDto(from_id: $from_id, to_id: $to_id, content: $content, conversation_id: $conversation_id, parent_id: $parent_id, model_id: $model_id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MsgDto &&
            (identical(other.from_id, from_id) || other.from_id == from_id) &&
            (identical(other.to_id, to_id) || other.to_id == to_id) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.conversation_id, conversation_id) ||
                other.conversation_id == conversation_id) &&
            (identical(other.parent_id, parent_id) ||
                other.parent_id == parent_id) &&
            (identical(other.model_id, model_id) ||
                other.model_id == model_id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, from_id, to_id, content,
      conversation_id, parent_id, model_id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MsgDtoCopyWith<_$_MsgDto> get copyWith =>
      __$$_MsgDtoCopyWithImpl<_$_MsgDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MsgDtoToJson(
      this,
    );
  }
}

abstract class _MsgDto implements MsgDto {
  const factory _MsgDto(
      {required final String from_id,
      required final String to_id,
      required final String content,
      required final String conversation_id,
      required final String parent_id,
      required final String model_id}) = _$_MsgDto;

  factory _MsgDto.fromJson(Map<String, dynamic> json) = _$_MsgDto.fromJson;

  @override
  String get from_id;
  @override
  String get to_id;
  @override
  String get content;
  @override
  String get conversation_id;
  @override
  String get parent_id;
  @override
  String get model_id;
  @override
  @JsonKey(ignore: true)
  _$$_MsgDtoCopyWith<_$_MsgDto> get copyWith =>
      throw _privateConstructorUsedError;
}

Gpt35ContentDto _$Gpt35ContentDtoFromJson(Map<String, dynamic> json) {
  return _Gpt35ContentDto.fromJson(json);
}

/// @nodoc
mixin _$Gpt35ContentDto {
  String get role => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $Gpt35ContentDtoCopyWith<Gpt35ContentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Gpt35ContentDtoCopyWith<$Res> {
  factory $Gpt35ContentDtoCopyWith(
          Gpt35ContentDto value, $Res Function(Gpt35ContentDto) then) =
      _$Gpt35ContentDtoCopyWithImpl<$Res, Gpt35ContentDto>;
  @useResult
  $Res call({String role, String content});
}

/// @nodoc
class _$Gpt35ContentDtoCopyWithImpl<$Res, $Val extends Gpt35ContentDto>
    implements $Gpt35ContentDtoCopyWith<$Res> {
  _$Gpt35ContentDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_Gpt35ContentDtoCopyWith<$Res>
    implements $Gpt35ContentDtoCopyWith<$Res> {
  factory _$$_Gpt35ContentDtoCopyWith(
          _$_Gpt35ContentDto value, $Res Function(_$_Gpt35ContentDto) then) =
      __$$_Gpt35ContentDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String role, String content});
}

/// @nodoc
class __$$_Gpt35ContentDtoCopyWithImpl<$Res>
    extends _$Gpt35ContentDtoCopyWithImpl<$Res, _$_Gpt35ContentDto>
    implements _$$_Gpt35ContentDtoCopyWith<$Res> {
  __$$_Gpt35ContentDtoCopyWithImpl(
      _$_Gpt35ContentDto _value, $Res Function(_$_Gpt35ContentDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
    Object? content = null,
  }) {
    return _then(_$_Gpt35ContentDto(
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Gpt35ContentDto implements _Gpt35ContentDto {
  const _$_Gpt35ContentDto({required this.role, required this.content});

  factory _$_Gpt35ContentDto.fromJson(Map<String, dynamic> json) =>
      _$$_Gpt35ContentDtoFromJson(json);

  @override
  final String role;
  @override
  final String content;

  @override
  String toString() {
    return 'Gpt35ContentDto(role: $role, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Gpt35ContentDto &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, role, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_Gpt35ContentDtoCopyWith<_$_Gpt35ContentDto> get copyWith =>
      __$$_Gpt35ContentDtoCopyWithImpl<_$_Gpt35ContentDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_Gpt35ContentDtoToJson(
      this,
    );
  }
}

abstract class _Gpt35ContentDto implements Gpt35ContentDto {
  const factory _Gpt35ContentDto(
      {required final String role,
      required final String content}) = _$_Gpt35ContentDto;

  factory _Gpt35ContentDto.fromJson(Map<String, dynamic> json) =
      _$_Gpt35ContentDto.fromJson;

  @override
  String get role;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$_Gpt35ContentDtoCopyWith<_$_Gpt35ContentDto> get copyWith =>
      throw _privateConstructorUsedError;
}
