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
  String? get conversation_id => throw _privateConstructorUsedError;
  String? get parent_id => throw _privateConstructorUsedError;
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
      String? conversation_id,
      String? parent_id,
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
    Object? conversation_id = freezed,
    Object? parent_id = freezed,
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
      conversation_id: freezed == conversation_id
          ? _value.conversation_id
          : conversation_id // ignore: cast_nullable_to_non_nullable
              as String?,
      parent_id: freezed == parent_id
          ? _value.parent_id
          : parent_id // ignore: cast_nullable_to_non_nullable
              as String?,
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
      String? conversation_id,
      String? parent_id,
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
    Object? conversation_id = freezed,
    Object? parent_id = freezed,
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
      conversation_id: freezed == conversation_id
          ? _value.conversation_id
          : conversation_id // ignore: cast_nullable_to_non_nullable
              as String?,
      parent_id: freezed == parent_id
          ? _value.parent_id
          : parent_id // ignore: cast_nullable_to_non_nullable
              as String?,
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
      this.conversation_id,
      this.parent_id,
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
  final String? conversation_id;
  @override
  final String? parent_id;
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
      final String? conversation_id,
      final String? parent_id,
      required final String model_id}) = _$_MsgDto;

  factory _MsgDto.fromJson(Map<String, dynamic> json) = _$_MsgDto.fromJson;

  @override
  String get from_id;
  @override
  String get to_id;
  @override
  String get content;
  @override
  String? get conversation_id;
  @override
  String? get parent_id;
  @override
  String get model_id;
  @override
  @JsonKey(ignore: true)
  _$$_MsgDtoCopyWith<_$_MsgDto> get copyWith =>
      throw _privateConstructorUsedError;
}

Gpt35ChoicesDto _$Gpt35ChoicesDtoFromJson(Map<String, dynamic> json) {
  return _Gpt35ChoicesDto.fromJson(json);
}

/// @nodoc
mixin _$Gpt35ChoicesDto {
  int get index => throw _privateConstructorUsedError;
  MsgGpt35ContentDto get message => throw _privateConstructorUsedError;
  String get finish_reason => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $Gpt35ChoicesDtoCopyWith<Gpt35ChoicesDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Gpt35ChoicesDtoCopyWith<$Res> {
  factory $Gpt35ChoicesDtoCopyWith(
          Gpt35ChoicesDto value, $Res Function(Gpt35ChoicesDto) then) =
      _$Gpt35ChoicesDtoCopyWithImpl<$Res, Gpt35ChoicesDto>;
  @useResult
  $Res call({int index, MsgGpt35ContentDto message, String finish_reason});

  $MsgGpt35ContentDtoCopyWith<$Res> get message;
}

/// @nodoc
class _$Gpt35ChoicesDtoCopyWithImpl<$Res, $Val extends Gpt35ChoicesDto>
    implements $Gpt35ChoicesDtoCopyWith<$Res> {
  _$Gpt35ChoicesDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? message = null,
    Object? finish_reason = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as MsgGpt35ContentDto,
      finish_reason: null == finish_reason
          ? _value.finish_reason
          : finish_reason // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MsgGpt35ContentDtoCopyWith<$Res> get message {
    return $MsgGpt35ContentDtoCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_Gpt35ChoicesDtoCopyWith<$Res>
    implements $Gpt35ChoicesDtoCopyWith<$Res> {
  factory _$$_Gpt35ChoicesDtoCopyWith(
          _$_Gpt35ChoicesDto value, $Res Function(_$_Gpt35ChoicesDto) then) =
      __$$_Gpt35ChoicesDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index, MsgGpt35ContentDto message, String finish_reason});

  @override
  $MsgGpt35ContentDtoCopyWith<$Res> get message;
}

/// @nodoc
class __$$_Gpt35ChoicesDtoCopyWithImpl<$Res>
    extends _$Gpt35ChoicesDtoCopyWithImpl<$Res, _$_Gpt35ChoicesDto>
    implements _$$_Gpt35ChoicesDtoCopyWith<$Res> {
  __$$_Gpt35ChoicesDtoCopyWithImpl(
      _$_Gpt35ChoicesDto _value, $Res Function(_$_Gpt35ChoicesDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? message = null,
    Object? finish_reason = null,
  }) {
    return _then(_$_Gpt35ChoicesDto(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as MsgGpt35ContentDto,
      finish_reason: null == finish_reason
          ? _value.finish_reason
          : finish_reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Gpt35ChoicesDto implements _Gpt35ChoicesDto {
  const _$_Gpt35ChoicesDto(
      {required this.index,
      required this.message,
      required this.finish_reason});

  factory _$_Gpt35ChoicesDto.fromJson(Map<String, dynamic> json) =>
      _$$_Gpt35ChoicesDtoFromJson(json);

  @override
  final int index;
  @override
  final MsgGpt35ContentDto message;
  @override
  final String finish_reason;

  @override
  String toString() {
    return 'Gpt35ChoicesDto(index: $index, message: $message, finish_reason: $finish_reason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Gpt35ChoicesDto &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.finish_reason, finish_reason) ||
                other.finish_reason == finish_reason));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, index, message, finish_reason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_Gpt35ChoicesDtoCopyWith<_$_Gpt35ChoicesDto> get copyWith =>
      __$$_Gpt35ChoicesDtoCopyWithImpl<_$_Gpt35ChoicesDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_Gpt35ChoicesDtoToJson(
      this,
    );
  }
}

abstract class _Gpt35ChoicesDto implements Gpt35ChoicesDto {
  const factory _Gpt35ChoicesDto(
      {required final int index,
      required final MsgGpt35ContentDto message,
      required final String finish_reason}) = _$_Gpt35ChoicesDto;

  factory _Gpt35ChoicesDto.fromJson(Map<String, dynamic> json) =
      _$_Gpt35ChoicesDto.fromJson;

  @override
  int get index;
  @override
  MsgGpt35ContentDto get message;
  @override
  String get finish_reason;
  @override
  @JsonKey(ignore: true)
  _$$_Gpt35ChoicesDtoCopyWith<_$_Gpt35ChoicesDto> get copyWith =>
      throw _privateConstructorUsedError;
}

MsgGpt35ContentDto _$MsgGpt35ContentDtoFromJson(Map<String, dynamic> json) {
  return _MsgGpt35ContentDto.fromJson(json);
}

/// @nodoc
mixin _$MsgGpt35ContentDto {
  String get role => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MsgGpt35ContentDtoCopyWith<MsgGpt35ContentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MsgGpt35ContentDtoCopyWith<$Res> {
  factory $MsgGpt35ContentDtoCopyWith(
          MsgGpt35ContentDto value, $Res Function(MsgGpt35ContentDto) then) =
      _$MsgGpt35ContentDtoCopyWithImpl<$Res, MsgGpt35ContentDto>;
  @useResult
  $Res call({String role, String content});
}

/// @nodoc
class _$MsgGpt35ContentDtoCopyWithImpl<$Res, $Val extends MsgGpt35ContentDto>
    implements $MsgGpt35ContentDtoCopyWith<$Res> {
  _$MsgGpt35ContentDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$_MsgGpt35ContentDtoCopyWith<$Res>
    implements $MsgGpt35ContentDtoCopyWith<$Res> {
  factory _$$_MsgGpt35ContentDtoCopyWith(_$_MsgGpt35ContentDto value,
          $Res Function(_$_MsgGpt35ContentDto) then) =
      __$$_MsgGpt35ContentDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String role, String content});
}

/// @nodoc
class __$$_MsgGpt35ContentDtoCopyWithImpl<$Res>
    extends _$MsgGpt35ContentDtoCopyWithImpl<$Res, _$_MsgGpt35ContentDto>
    implements _$$_MsgGpt35ContentDtoCopyWith<$Res> {
  __$$_MsgGpt35ContentDtoCopyWithImpl(
      _$_MsgGpt35ContentDto _value, $Res Function(_$_MsgGpt35ContentDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
    Object? content = null,
  }) {
    return _then(_$_MsgGpt35ContentDto(
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
class _$_MsgGpt35ContentDto implements _MsgGpt35ContentDto {
  const _$_MsgGpt35ContentDto({required this.role, required this.content});

  factory _$_MsgGpt35ContentDto.fromJson(Map<String, dynamic> json) =>
      _$$_MsgGpt35ContentDtoFromJson(json);

  @override
  final String role;
  @override
  final String content;

  @override
  String toString() {
    return 'MsgGpt35ContentDto(role: $role, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MsgGpt35ContentDto &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, role, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MsgGpt35ContentDtoCopyWith<_$_MsgGpt35ContentDto> get copyWith =>
      __$$_MsgGpt35ContentDtoCopyWithImpl<_$_MsgGpt35ContentDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MsgGpt35ContentDtoToJson(
      this,
    );
  }
}

abstract class _MsgGpt35ContentDto implements MsgGpt35ContentDto {
  const factory _MsgGpt35ContentDto(
      {required final String role,
      required final String content}) = _$_MsgGpt35ContentDto;

  factory _MsgGpt35ContentDto.fromJson(Map<String, dynamic> json) =
      _$_MsgGpt35ContentDto.fromJson;

  @override
  String get role;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$_MsgGpt35ContentDtoCopyWith<_$_MsgGpt35ContentDto> get copyWith =>
      throw _privateConstructorUsedError;
}
