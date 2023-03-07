// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppUpdateInfo _$AppUpdateInfoFromJson(Map<String, dynamic> json) {
  return _AppUpdateInfo.fromJson(json);
}

/// @nodoc
mixin _$AppUpdateInfo {
  String get version => throw _privateConstructorUsedError;
  String? get desc => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppUpdateInfoCopyWith<AppUpdateInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppUpdateInfoCopyWith<$Res> {
  factory $AppUpdateInfoCopyWith(
          AppUpdateInfo value, $Res Function(AppUpdateInfo) then) =
      _$AppUpdateInfoCopyWithImpl<$Res, AppUpdateInfo>;
  @useResult
  $Res call({String version, String? desc, String? url});
}

/// @nodoc
class _$AppUpdateInfoCopyWithImpl<$Res, $Val extends AppUpdateInfo>
    implements $AppUpdateInfoCopyWith<$Res> {
  _$AppUpdateInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? desc = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      desc: freezed == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppUpdateInfoCopyWith<$Res>
    implements $AppUpdateInfoCopyWith<$Res> {
  factory _$$_AppUpdateInfoCopyWith(
          _$_AppUpdateInfo value, $Res Function(_$_AppUpdateInfo) then) =
      __$$_AppUpdateInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String version, String? desc, String? url});
}

/// @nodoc
class __$$_AppUpdateInfoCopyWithImpl<$Res>
    extends _$AppUpdateInfoCopyWithImpl<$Res, _$_AppUpdateInfo>
    implements _$$_AppUpdateInfoCopyWith<$Res> {
  __$$_AppUpdateInfoCopyWithImpl(
      _$_AppUpdateInfo _value, $Res Function(_$_AppUpdateInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? desc = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_AppUpdateInfo(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      desc: freezed == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppUpdateInfo implements _AppUpdateInfo {
  const _$_AppUpdateInfo({required this.version, this.desc, this.url});

  factory _$_AppUpdateInfo.fromJson(Map<String, dynamic> json) =>
      _$$_AppUpdateInfoFromJson(json);

  @override
  final String version;
  @override
  final String? desc;
  @override
  final String? url;

  @override
  String toString() {
    return 'AppUpdateInfo(version: $version, desc: $desc, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppUpdateInfo &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.desc, desc) || other.desc == desc) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, version, desc, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppUpdateInfoCopyWith<_$_AppUpdateInfo> get copyWith =>
      __$$_AppUpdateInfoCopyWithImpl<_$_AppUpdateInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppUpdateInfoToJson(
      this,
    );
  }
}

abstract class _AppUpdateInfo implements AppUpdateInfo {
  const factory _AppUpdateInfo(
      {required final String version,
      final String? desc,
      final String? url}) = _$_AppUpdateInfo;

  factory _AppUpdateInfo.fromJson(Map<String, dynamic> json) =
      _$_AppUpdateInfo.fromJson;

  @override
  String get version;
  @override
  String? get desc;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$_AppUpdateInfoCopyWith<_$_AppUpdateInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
