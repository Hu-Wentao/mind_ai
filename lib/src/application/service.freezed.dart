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

ClientInfo _$ClientInfoFromJson(Map<String, dynamic> json) {
  return _ClientInfo.fromJson(json);
}

/// @nodoc
mixin _$ClientInfo {
  @JsonKey(name: 'device_id')
  String get deviceId => throw _privateConstructorUsedError; // platform
  @JsonKey(name: 'locale')
  String get locale => throw _privateConstructorUsedError; // zh / ..
  @JsonKey(name: 'type')
  String get type => throw _privateConstructorUsedError; // io / web
  @JsonKey(name: 'system')
  String get system => throw _privateConstructorUsedError; // mac / ..
  @JsonKey(name: 'version')
  String get version => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientInfoCopyWith<ClientInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientInfoCopyWith<$Res> {
  factory $ClientInfoCopyWith(
          ClientInfo value, $Res Function(ClientInfo) then) =
      _$ClientInfoCopyWithImpl<$Res, ClientInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'device_id') String deviceId,
      @JsonKey(name: 'locale') String locale,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'system') String system,
      @JsonKey(name: 'version') String version});
}

/// @nodoc
class _$ClientInfoCopyWithImpl<$Res, $Val extends ClientInfo>
    implements $ClientInfoCopyWith<$Res> {
  _$ClientInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? locale = null,
    Object? type = null,
    Object? system = null,
    Object? version = null,
  }) {
    return _then(_value.copyWith(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      system: null == system
          ? _value.system
          : system // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClientInfoCopyWith<$Res>
    implements $ClientInfoCopyWith<$Res> {
  factory _$$_ClientInfoCopyWith(
          _$_ClientInfo value, $Res Function(_$_ClientInfo) then) =
      __$$_ClientInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'device_id') String deviceId,
      @JsonKey(name: 'locale') String locale,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'system') String system,
      @JsonKey(name: 'version') String version});
}

/// @nodoc
class __$$_ClientInfoCopyWithImpl<$Res>
    extends _$ClientInfoCopyWithImpl<$Res, _$_ClientInfo>
    implements _$$_ClientInfoCopyWith<$Res> {
  __$$_ClientInfoCopyWithImpl(
      _$_ClientInfo _value, $Res Function(_$_ClientInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? locale = null,
    Object? type = null,
    Object? system = null,
    Object? version = null,
  }) {
    return _then(_$_ClientInfo(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      system: null == system
          ? _value.system
          : system // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ClientInfo with DiagnosticableTreeMixin implements _ClientInfo {
  const _$_ClientInfo(
      {@JsonKey(name: 'device_id') required this.deviceId,
      @JsonKey(name: 'locale') required this.locale,
      @JsonKey(name: 'type') required this.type,
      @JsonKey(name: 'system') required this.system,
      @JsonKey(name: 'version') required this.version});

  factory _$_ClientInfo.fromJson(Map<String, dynamic> json) =>
      _$$_ClientInfoFromJson(json);

  @override
  @JsonKey(name: 'device_id')
  final String deviceId;
// platform
  @override
  @JsonKey(name: 'locale')
  final String locale;
// zh / ..
  @override
  @JsonKey(name: 'type')
  final String type;
// io / web
  @override
  @JsonKey(name: 'system')
  final String system;
// mac / ..
  @override
  @JsonKey(name: 'version')
  final String version;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ClientInfo(deviceId: $deviceId, locale: $locale, type: $type, system: $system, version: $version)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ClientInfo'))
      ..add(DiagnosticsProperty('deviceId', deviceId))
      ..add(DiagnosticsProperty('locale', locale))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('system', system))
      ..add(DiagnosticsProperty('version', version));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClientInfo &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.locale, locale) || other.locale == locale) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.system, system) || other.system == system) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, deviceId, locale, type, system, version);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClientInfoCopyWith<_$_ClientInfo> get copyWith =>
      __$$_ClientInfoCopyWithImpl<_$_ClientInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClientInfoToJson(
      this,
    );
  }
}

abstract class _ClientInfo implements ClientInfo {
  const factory _ClientInfo(
      {@JsonKey(name: 'device_id') required final String deviceId,
      @JsonKey(name: 'locale') required final String locale,
      @JsonKey(name: 'type') required final String type,
      @JsonKey(name: 'system') required final String system,
      @JsonKey(name: 'version') required final String version}) = _$_ClientInfo;

  factory _ClientInfo.fromJson(Map<String, dynamic> json) =
      _$_ClientInfo.fromJson;

  @override
  @JsonKey(name: 'device_id')
  String get deviceId;
  @override // platform
  @JsonKey(name: 'locale')
  String get locale;
  @override // zh / ..
  @JsonKey(name: 'type')
  String get type;
  @override // io / web
  @JsonKey(name: 'system')
  String get system;
  @override // mac / ..
  @JsonKey(name: 'version')
  String get version;
  @override
  @JsonKey(ignore: true)
  _$$_ClientInfoCopyWith<_$_ClientInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

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
class _$_AppUpdateInfo with DiagnosticableTreeMixin implements _AppUpdateInfo {
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppUpdateInfo(version: $version, desc: $desc, url: $url)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppUpdateInfo'))
      ..add(DiagnosticsProperty('version', version))
      ..add(DiagnosticsProperty('desc', desc))
      ..add(DiagnosticsProperty('url', url));
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
