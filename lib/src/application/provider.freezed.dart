// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppEvt {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkUpdate,
    required TResult Function(AppUpdateInfo info) needUpdate,
    required TResult Function(AppUpdateInfo info) ensureUpdate,
    required TResult Function() login,
    required TResult Function(String uid) logged,
    required TResult Function(String msg) loginError,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkUpdate,
    TResult? Function(AppUpdateInfo info)? needUpdate,
    TResult? Function(AppUpdateInfo info)? ensureUpdate,
    TResult? Function()? login,
    TResult? Function(String uid)? logged,
    TResult? Function(String msg)? loginError,
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkUpdate,
    TResult Function(AppUpdateInfo info)? needUpdate,
    TResult Function(AppUpdateInfo info)? ensureUpdate,
    TResult Function()? login,
    TResult Function(String uid)? logged,
    TResult Function(String msg)? loginError,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppEvtCheckUpdate value) checkUpdate,
    required TResult Function(_AppEvtNeedUpdate value) needUpdate,
    required TResult Function(_AppEvtEnsureUpdate value) ensureUpdate,
    required TResult Function(_AppEvtLogin value) login,
    required TResult Function(_AppEvtLogged value) logged,
    required TResult Function(_AppEvtLoginError value) loginError,
    required TResult Function(_AppEvtLogout value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppEvtCheckUpdate value)? checkUpdate,
    TResult? Function(_AppEvtNeedUpdate value)? needUpdate,
    TResult? Function(_AppEvtEnsureUpdate value)? ensureUpdate,
    TResult? Function(_AppEvtLogin value)? login,
    TResult? Function(_AppEvtLogged value)? logged,
    TResult? Function(_AppEvtLoginError value)? loginError,
    TResult? Function(_AppEvtLogout value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppEvtCheckUpdate value)? checkUpdate,
    TResult Function(_AppEvtNeedUpdate value)? needUpdate,
    TResult Function(_AppEvtEnsureUpdate value)? ensureUpdate,
    TResult Function(_AppEvtLogin value)? login,
    TResult Function(_AppEvtLogged value)? logged,
    TResult Function(_AppEvtLoginError value)? loginError,
    TResult Function(_AppEvtLogout value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEvtCopyWith<$Res> {
  factory $AppEvtCopyWith(AppEvt value, $Res Function(AppEvt) then) =
      _$AppEvtCopyWithImpl<$Res, AppEvt>;
}

/// @nodoc
class _$AppEvtCopyWithImpl<$Res, $Val extends AppEvt>
    implements $AppEvtCopyWith<$Res> {
  _$AppEvtCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AppEvtCheckUpdateCopyWith<$Res> {
  factory _$$_AppEvtCheckUpdateCopyWith(_$_AppEvtCheckUpdate value,
          $Res Function(_$_AppEvtCheckUpdate) then) =
      __$$_AppEvtCheckUpdateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AppEvtCheckUpdateCopyWithImpl<$Res>
    extends _$AppEvtCopyWithImpl<$Res, _$_AppEvtCheckUpdate>
    implements _$$_AppEvtCheckUpdateCopyWith<$Res> {
  __$$_AppEvtCheckUpdateCopyWithImpl(
      _$_AppEvtCheckUpdate _value, $Res Function(_$_AppEvtCheckUpdate) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AppEvtCheckUpdate implements _AppEvtCheckUpdate {
  const _$_AppEvtCheckUpdate();

  @override
  String toString() {
    return 'AppEvt.checkUpdate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AppEvtCheckUpdate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkUpdate,
    required TResult Function(AppUpdateInfo info) needUpdate,
    required TResult Function(AppUpdateInfo info) ensureUpdate,
    required TResult Function() login,
    required TResult Function(String uid) logged,
    required TResult Function(String msg) loginError,
    required TResult Function() logout,
  }) {
    return checkUpdate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkUpdate,
    TResult? Function(AppUpdateInfo info)? needUpdate,
    TResult? Function(AppUpdateInfo info)? ensureUpdate,
    TResult? Function()? login,
    TResult? Function(String uid)? logged,
    TResult? Function(String msg)? loginError,
    TResult? Function()? logout,
  }) {
    return checkUpdate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkUpdate,
    TResult Function(AppUpdateInfo info)? needUpdate,
    TResult Function(AppUpdateInfo info)? ensureUpdate,
    TResult Function()? login,
    TResult Function(String uid)? logged,
    TResult Function(String msg)? loginError,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (checkUpdate != null) {
      return checkUpdate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppEvtCheckUpdate value) checkUpdate,
    required TResult Function(_AppEvtNeedUpdate value) needUpdate,
    required TResult Function(_AppEvtEnsureUpdate value) ensureUpdate,
    required TResult Function(_AppEvtLogin value) login,
    required TResult Function(_AppEvtLogged value) logged,
    required TResult Function(_AppEvtLoginError value) loginError,
    required TResult Function(_AppEvtLogout value) logout,
  }) {
    return checkUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppEvtCheckUpdate value)? checkUpdate,
    TResult? Function(_AppEvtNeedUpdate value)? needUpdate,
    TResult? Function(_AppEvtEnsureUpdate value)? ensureUpdate,
    TResult? Function(_AppEvtLogin value)? login,
    TResult? Function(_AppEvtLogged value)? logged,
    TResult? Function(_AppEvtLoginError value)? loginError,
    TResult? Function(_AppEvtLogout value)? logout,
  }) {
    return checkUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppEvtCheckUpdate value)? checkUpdate,
    TResult Function(_AppEvtNeedUpdate value)? needUpdate,
    TResult Function(_AppEvtEnsureUpdate value)? ensureUpdate,
    TResult Function(_AppEvtLogin value)? login,
    TResult Function(_AppEvtLogged value)? logged,
    TResult Function(_AppEvtLoginError value)? loginError,
    TResult Function(_AppEvtLogout value)? logout,
    required TResult orElse(),
  }) {
    if (checkUpdate != null) {
      return checkUpdate(this);
    }
    return orElse();
  }
}

abstract class _AppEvtCheckUpdate implements AppEvt {
  const factory _AppEvtCheckUpdate() = _$_AppEvtCheckUpdate;
}

/// @nodoc
abstract class _$$_AppEvtNeedUpdateCopyWith<$Res> {
  factory _$$_AppEvtNeedUpdateCopyWith(
          _$_AppEvtNeedUpdate value, $Res Function(_$_AppEvtNeedUpdate) then) =
      __$$_AppEvtNeedUpdateCopyWithImpl<$Res>;
  @useResult
  $Res call({AppUpdateInfo info});

  $AppUpdateInfoCopyWith<$Res> get info;
}

/// @nodoc
class __$$_AppEvtNeedUpdateCopyWithImpl<$Res>
    extends _$AppEvtCopyWithImpl<$Res, _$_AppEvtNeedUpdate>
    implements _$$_AppEvtNeedUpdateCopyWith<$Res> {
  __$$_AppEvtNeedUpdateCopyWithImpl(
      _$_AppEvtNeedUpdate _value, $Res Function(_$_AppEvtNeedUpdate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
  }) {
    return _then(_$_AppEvtNeedUpdate(
      null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as AppUpdateInfo,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUpdateInfoCopyWith<$Res> get info {
    return $AppUpdateInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc

class _$_AppEvtNeedUpdate implements _AppEvtNeedUpdate {
  const _$_AppEvtNeedUpdate(this.info);

  @override
  final AppUpdateInfo info;

  @override
  String toString() {
    return 'AppEvt.needUpdate(info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppEvtNeedUpdate &&
            (identical(other.info, info) || other.info == info));
  }

  @override
  int get hashCode => Object.hash(runtimeType, info);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppEvtNeedUpdateCopyWith<_$_AppEvtNeedUpdate> get copyWith =>
      __$$_AppEvtNeedUpdateCopyWithImpl<_$_AppEvtNeedUpdate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkUpdate,
    required TResult Function(AppUpdateInfo info) needUpdate,
    required TResult Function(AppUpdateInfo info) ensureUpdate,
    required TResult Function() login,
    required TResult Function(String uid) logged,
    required TResult Function(String msg) loginError,
    required TResult Function() logout,
  }) {
    return needUpdate(info);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkUpdate,
    TResult? Function(AppUpdateInfo info)? needUpdate,
    TResult? Function(AppUpdateInfo info)? ensureUpdate,
    TResult? Function()? login,
    TResult? Function(String uid)? logged,
    TResult? Function(String msg)? loginError,
    TResult? Function()? logout,
  }) {
    return needUpdate?.call(info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkUpdate,
    TResult Function(AppUpdateInfo info)? needUpdate,
    TResult Function(AppUpdateInfo info)? ensureUpdate,
    TResult Function()? login,
    TResult Function(String uid)? logged,
    TResult Function(String msg)? loginError,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (needUpdate != null) {
      return needUpdate(info);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppEvtCheckUpdate value) checkUpdate,
    required TResult Function(_AppEvtNeedUpdate value) needUpdate,
    required TResult Function(_AppEvtEnsureUpdate value) ensureUpdate,
    required TResult Function(_AppEvtLogin value) login,
    required TResult Function(_AppEvtLogged value) logged,
    required TResult Function(_AppEvtLoginError value) loginError,
    required TResult Function(_AppEvtLogout value) logout,
  }) {
    return needUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppEvtCheckUpdate value)? checkUpdate,
    TResult? Function(_AppEvtNeedUpdate value)? needUpdate,
    TResult? Function(_AppEvtEnsureUpdate value)? ensureUpdate,
    TResult? Function(_AppEvtLogin value)? login,
    TResult? Function(_AppEvtLogged value)? logged,
    TResult? Function(_AppEvtLoginError value)? loginError,
    TResult? Function(_AppEvtLogout value)? logout,
  }) {
    return needUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppEvtCheckUpdate value)? checkUpdate,
    TResult Function(_AppEvtNeedUpdate value)? needUpdate,
    TResult Function(_AppEvtEnsureUpdate value)? ensureUpdate,
    TResult Function(_AppEvtLogin value)? login,
    TResult Function(_AppEvtLogged value)? logged,
    TResult Function(_AppEvtLoginError value)? loginError,
    TResult Function(_AppEvtLogout value)? logout,
    required TResult orElse(),
  }) {
    if (needUpdate != null) {
      return needUpdate(this);
    }
    return orElse();
  }
}

abstract class _AppEvtNeedUpdate implements AppEvt {
  const factory _AppEvtNeedUpdate(final AppUpdateInfo info) =
      _$_AppEvtNeedUpdate;

  AppUpdateInfo get info;
  @JsonKey(ignore: true)
  _$$_AppEvtNeedUpdateCopyWith<_$_AppEvtNeedUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AppEvtEnsureUpdateCopyWith<$Res> {
  factory _$$_AppEvtEnsureUpdateCopyWith(_$_AppEvtEnsureUpdate value,
          $Res Function(_$_AppEvtEnsureUpdate) then) =
      __$$_AppEvtEnsureUpdateCopyWithImpl<$Res>;
  @useResult
  $Res call({AppUpdateInfo info});

  $AppUpdateInfoCopyWith<$Res> get info;
}

/// @nodoc
class __$$_AppEvtEnsureUpdateCopyWithImpl<$Res>
    extends _$AppEvtCopyWithImpl<$Res, _$_AppEvtEnsureUpdate>
    implements _$$_AppEvtEnsureUpdateCopyWith<$Res> {
  __$$_AppEvtEnsureUpdateCopyWithImpl(
      _$_AppEvtEnsureUpdate _value, $Res Function(_$_AppEvtEnsureUpdate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
  }) {
    return _then(_$_AppEvtEnsureUpdate(
      null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as AppUpdateInfo,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUpdateInfoCopyWith<$Res> get info {
    return $AppUpdateInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc

class _$_AppEvtEnsureUpdate implements _AppEvtEnsureUpdate {
  const _$_AppEvtEnsureUpdate(this.info);

  @override
  final AppUpdateInfo info;

  @override
  String toString() {
    return 'AppEvt.ensureUpdate(info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppEvtEnsureUpdate &&
            (identical(other.info, info) || other.info == info));
  }

  @override
  int get hashCode => Object.hash(runtimeType, info);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppEvtEnsureUpdateCopyWith<_$_AppEvtEnsureUpdate> get copyWith =>
      __$$_AppEvtEnsureUpdateCopyWithImpl<_$_AppEvtEnsureUpdate>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkUpdate,
    required TResult Function(AppUpdateInfo info) needUpdate,
    required TResult Function(AppUpdateInfo info) ensureUpdate,
    required TResult Function() login,
    required TResult Function(String uid) logged,
    required TResult Function(String msg) loginError,
    required TResult Function() logout,
  }) {
    return ensureUpdate(info);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkUpdate,
    TResult? Function(AppUpdateInfo info)? needUpdate,
    TResult? Function(AppUpdateInfo info)? ensureUpdate,
    TResult? Function()? login,
    TResult? Function(String uid)? logged,
    TResult? Function(String msg)? loginError,
    TResult? Function()? logout,
  }) {
    return ensureUpdate?.call(info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkUpdate,
    TResult Function(AppUpdateInfo info)? needUpdate,
    TResult Function(AppUpdateInfo info)? ensureUpdate,
    TResult Function()? login,
    TResult Function(String uid)? logged,
    TResult Function(String msg)? loginError,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (ensureUpdate != null) {
      return ensureUpdate(info);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppEvtCheckUpdate value) checkUpdate,
    required TResult Function(_AppEvtNeedUpdate value) needUpdate,
    required TResult Function(_AppEvtEnsureUpdate value) ensureUpdate,
    required TResult Function(_AppEvtLogin value) login,
    required TResult Function(_AppEvtLogged value) logged,
    required TResult Function(_AppEvtLoginError value) loginError,
    required TResult Function(_AppEvtLogout value) logout,
  }) {
    return ensureUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppEvtCheckUpdate value)? checkUpdate,
    TResult? Function(_AppEvtNeedUpdate value)? needUpdate,
    TResult? Function(_AppEvtEnsureUpdate value)? ensureUpdate,
    TResult? Function(_AppEvtLogin value)? login,
    TResult? Function(_AppEvtLogged value)? logged,
    TResult? Function(_AppEvtLoginError value)? loginError,
    TResult? Function(_AppEvtLogout value)? logout,
  }) {
    return ensureUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppEvtCheckUpdate value)? checkUpdate,
    TResult Function(_AppEvtNeedUpdate value)? needUpdate,
    TResult Function(_AppEvtEnsureUpdate value)? ensureUpdate,
    TResult Function(_AppEvtLogin value)? login,
    TResult Function(_AppEvtLogged value)? logged,
    TResult Function(_AppEvtLoginError value)? loginError,
    TResult Function(_AppEvtLogout value)? logout,
    required TResult orElse(),
  }) {
    if (ensureUpdate != null) {
      return ensureUpdate(this);
    }
    return orElse();
  }
}

abstract class _AppEvtEnsureUpdate implements AppEvt {
  const factory _AppEvtEnsureUpdate(final AppUpdateInfo info) =
      _$_AppEvtEnsureUpdate;

  AppUpdateInfo get info;
  @JsonKey(ignore: true)
  _$$_AppEvtEnsureUpdateCopyWith<_$_AppEvtEnsureUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AppEvtLoginCopyWith<$Res> {
  factory _$$_AppEvtLoginCopyWith(
          _$_AppEvtLogin value, $Res Function(_$_AppEvtLogin) then) =
      __$$_AppEvtLoginCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AppEvtLoginCopyWithImpl<$Res>
    extends _$AppEvtCopyWithImpl<$Res, _$_AppEvtLogin>
    implements _$$_AppEvtLoginCopyWith<$Res> {
  __$$_AppEvtLoginCopyWithImpl(
      _$_AppEvtLogin _value, $Res Function(_$_AppEvtLogin) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AppEvtLogin implements _AppEvtLogin {
  const _$_AppEvtLogin();

  @override
  String toString() {
    return 'AppEvt.login()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AppEvtLogin);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkUpdate,
    required TResult Function(AppUpdateInfo info) needUpdate,
    required TResult Function(AppUpdateInfo info) ensureUpdate,
    required TResult Function() login,
    required TResult Function(String uid) logged,
    required TResult Function(String msg) loginError,
    required TResult Function() logout,
  }) {
    return login();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkUpdate,
    TResult? Function(AppUpdateInfo info)? needUpdate,
    TResult? Function(AppUpdateInfo info)? ensureUpdate,
    TResult? Function()? login,
    TResult? Function(String uid)? logged,
    TResult? Function(String msg)? loginError,
    TResult? Function()? logout,
  }) {
    return login?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkUpdate,
    TResult Function(AppUpdateInfo info)? needUpdate,
    TResult Function(AppUpdateInfo info)? ensureUpdate,
    TResult Function()? login,
    TResult Function(String uid)? logged,
    TResult Function(String msg)? loginError,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppEvtCheckUpdate value) checkUpdate,
    required TResult Function(_AppEvtNeedUpdate value) needUpdate,
    required TResult Function(_AppEvtEnsureUpdate value) ensureUpdate,
    required TResult Function(_AppEvtLogin value) login,
    required TResult Function(_AppEvtLogged value) logged,
    required TResult Function(_AppEvtLoginError value) loginError,
    required TResult Function(_AppEvtLogout value) logout,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppEvtCheckUpdate value)? checkUpdate,
    TResult? Function(_AppEvtNeedUpdate value)? needUpdate,
    TResult? Function(_AppEvtEnsureUpdate value)? ensureUpdate,
    TResult? Function(_AppEvtLogin value)? login,
    TResult? Function(_AppEvtLogged value)? logged,
    TResult? Function(_AppEvtLoginError value)? loginError,
    TResult? Function(_AppEvtLogout value)? logout,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppEvtCheckUpdate value)? checkUpdate,
    TResult Function(_AppEvtNeedUpdate value)? needUpdate,
    TResult Function(_AppEvtEnsureUpdate value)? ensureUpdate,
    TResult Function(_AppEvtLogin value)? login,
    TResult Function(_AppEvtLogged value)? logged,
    TResult Function(_AppEvtLoginError value)? loginError,
    TResult Function(_AppEvtLogout value)? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _AppEvtLogin implements AppEvt {
  const factory _AppEvtLogin() = _$_AppEvtLogin;
}

/// @nodoc
abstract class _$$_AppEvtLoggedCopyWith<$Res> {
  factory _$$_AppEvtLoggedCopyWith(
          _$_AppEvtLogged value, $Res Function(_$_AppEvtLogged) then) =
      __$$_AppEvtLoggedCopyWithImpl<$Res>;
  @useResult
  $Res call({String uid});
}

/// @nodoc
class __$$_AppEvtLoggedCopyWithImpl<$Res>
    extends _$AppEvtCopyWithImpl<$Res, _$_AppEvtLogged>
    implements _$$_AppEvtLoggedCopyWith<$Res> {
  __$$_AppEvtLoggedCopyWithImpl(
      _$_AppEvtLogged _value, $Res Function(_$_AppEvtLogged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
  }) {
    return _then(_$_AppEvtLogged(
      null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AppEvtLogged implements _AppEvtLogged {
  const _$_AppEvtLogged(this.uid);

  @override
  final String uid;

  @override
  String toString() {
    return 'AppEvt.logged(uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppEvtLogged &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppEvtLoggedCopyWith<_$_AppEvtLogged> get copyWith =>
      __$$_AppEvtLoggedCopyWithImpl<_$_AppEvtLogged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkUpdate,
    required TResult Function(AppUpdateInfo info) needUpdate,
    required TResult Function(AppUpdateInfo info) ensureUpdate,
    required TResult Function() login,
    required TResult Function(String uid) logged,
    required TResult Function(String msg) loginError,
    required TResult Function() logout,
  }) {
    return logged(uid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkUpdate,
    TResult? Function(AppUpdateInfo info)? needUpdate,
    TResult? Function(AppUpdateInfo info)? ensureUpdate,
    TResult? Function()? login,
    TResult? Function(String uid)? logged,
    TResult? Function(String msg)? loginError,
    TResult? Function()? logout,
  }) {
    return logged?.call(uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkUpdate,
    TResult Function(AppUpdateInfo info)? needUpdate,
    TResult Function(AppUpdateInfo info)? ensureUpdate,
    TResult Function()? login,
    TResult Function(String uid)? logged,
    TResult Function(String msg)? loginError,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logged != null) {
      return logged(uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppEvtCheckUpdate value) checkUpdate,
    required TResult Function(_AppEvtNeedUpdate value) needUpdate,
    required TResult Function(_AppEvtEnsureUpdate value) ensureUpdate,
    required TResult Function(_AppEvtLogin value) login,
    required TResult Function(_AppEvtLogged value) logged,
    required TResult Function(_AppEvtLoginError value) loginError,
    required TResult Function(_AppEvtLogout value) logout,
  }) {
    return logged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppEvtCheckUpdate value)? checkUpdate,
    TResult? Function(_AppEvtNeedUpdate value)? needUpdate,
    TResult? Function(_AppEvtEnsureUpdate value)? ensureUpdate,
    TResult? Function(_AppEvtLogin value)? login,
    TResult? Function(_AppEvtLogged value)? logged,
    TResult? Function(_AppEvtLoginError value)? loginError,
    TResult? Function(_AppEvtLogout value)? logout,
  }) {
    return logged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppEvtCheckUpdate value)? checkUpdate,
    TResult Function(_AppEvtNeedUpdate value)? needUpdate,
    TResult Function(_AppEvtEnsureUpdate value)? ensureUpdate,
    TResult Function(_AppEvtLogin value)? login,
    TResult Function(_AppEvtLogged value)? logged,
    TResult Function(_AppEvtLoginError value)? loginError,
    TResult Function(_AppEvtLogout value)? logout,
    required TResult orElse(),
  }) {
    if (logged != null) {
      return logged(this);
    }
    return orElse();
  }
}

abstract class _AppEvtLogged implements AppEvt {
  const factory _AppEvtLogged(final String uid) = _$_AppEvtLogged;

  String get uid;
  @JsonKey(ignore: true)
  _$$_AppEvtLoggedCopyWith<_$_AppEvtLogged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AppEvtLoginErrorCopyWith<$Res> {
  factory _$$_AppEvtLoginErrorCopyWith(
          _$_AppEvtLoginError value, $Res Function(_$_AppEvtLoginError) then) =
      __$$_AppEvtLoginErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$_AppEvtLoginErrorCopyWithImpl<$Res>
    extends _$AppEvtCopyWithImpl<$Res, _$_AppEvtLoginError>
    implements _$$_AppEvtLoginErrorCopyWith<$Res> {
  __$$_AppEvtLoginErrorCopyWithImpl(
      _$_AppEvtLoginError _value, $Res Function(_$_AppEvtLoginError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$_AppEvtLoginError(
      null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AppEvtLoginError implements _AppEvtLoginError {
  const _$_AppEvtLoginError(this.msg);

  @override
  final String msg;

  @override
  String toString() {
    return 'AppEvt.loginError(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppEvtLoginError &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppEvtLoginErrorCopyWith<_$_AppEvtLoginError> get copyWith =>
      __$$_AppEvtLoginErrorCopyWithImpl<_$_AppEvtLoginError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkUpdate,
    required TResult Function(AppUpdateInfo info) needUpdate,
    required TResult Function(AppUpdateInfo info) ensureUpdate,
    required TResult Function() login,
    required TResult Function(String uid) logged,
    required TResult Function(String msg) loginError,
    required TResult Function() logout,
  }) {
    return loginError(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkUpdate,
    TResult? Function(AppUpdateInfo info)? needUpdate,
    TResult? Function(AppUpdateInfo info)? ensureUpdate,
    TResult? Function()? login,
    TResult? Function(String uid)? logged,
    TResult? Function(String msg)? loginError,
    TResult? Function()? logout,
  }) {
    return loginError?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkUpdate,
    TResult Function(AppUpdateInfo info)? needUpdate,
    TResult Function(AppUpdateInfo info)? ensureUpdate,
    TResult Function()? login,
    TResult Function(String uid)? logged,
    TResult Function(String msg)? loginError,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (loginError != null) {
      return loginError(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppEvtCheckUpdate value) checkUpdate,
    required TResult Function(_AppEvtNeedUpdate value) needUpdate,
    required TResult Function(_AppEvtEnsureUpdate value) ensureUpdate,
    required TResult Function(_AppEvtLogin value) login,
    required TResult Function(_AppEvtLogged value) logged,
    required TResult Function(_AppEvtLoginError value) loginError,
    required TResult Function(_AppEvtLogout value) logout,
  }) {
    return loginError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppEvtCheckUpdate value)? checkUpdate,
    TResult? Function(_AppEvtNeedUpdate value)? needUpdate,
    TResult? Function(_AppEvtEnsureUpdate value)? ensureUpdate,
    TResult? Function(_AppEvtLogin value)? login,
    TResult? Function(_AppEvtLogged value)? logged,
    TResult? Function(_AppEvtLoginError value)? loginError,
    TResult? Function(_AppEvtLogout value)? logout,
  }) {
    return loginError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppEvtCheckUpdate value)? checkUpdate,
    TResult Function(_AppEvtNeedUpdate value)? needUpdate,
    TResult Function(_AppEvtEnsureUpdate value)? ensureUpdate,
    TResult Function(_AppEvtLogin value)? login,
    TResult Function(_AppEvtLogged value)? logged,
    TResult Function(_AppEvtLoginError value)? loginError,
    TResult Function(_AppEvtLogout value)? logout,
    required TResult orElse(),
  }) {
    if (loginError != null) {
      return loginError(this);
    }
    return orElse();
  }
}

abstract class _AppEvtLoginError implements AppEvt {
  const factory _AppEvtLoginError(final String msg) = _$_AppEvtLoginError;

  String get msg;
  @JsonKey(ignore: true)
  _$$_AppEvtLoginErrorCopyWith<_$_AppEvtLoginError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AppEvtLogoutCopyWith<$Res> {
  factory _$$_AppEvtLogoutCopyWith(
          _$_AppEvtLogout value, $Res Function(_$_AppEvtLogout) then) =
      __$$_AppEvtLogoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AppEvtLogoutCopyWithImpl<$Res>
    extends _$AppEvtCopyWithImpl<$Res, _$_AppEvtLogout>
    implements _$$_AppEvtLogoutCopyWith<$Res> {
  __$$_AppEvtLogoutCopyWithImpl(
      _$_AppEvtLogout _value, $Res Function(_$_AppEvtLogout) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AppEvtLogout implements _AppEvtLogout {
  const _$_AppEvtLogout();

  @override
  String toString() {
    return 'AppEvt.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AppEvtLogout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkUpdate,
    required TResult Function(AppUpdateInfo info) needUpdate,
    required TResult Function(AppUpdateInfo info) ensureUpdate,
    required TResult Function() login,
    required TResult Function(String uid) logged,
    required TResult Function(String msg) loginError,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkUpdate,
    TResult? Function(AppUpdateInfo info)? needUpdate,
    TResult? Function(AppUpdateInfo info)? ensureUpdate,
    TResult? Function()? login,
    TResult? Function(String uid)? logged,
    TResult? Function(String msg)? loginError,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkUpdate,
    TResult Function(AppUpdateInfo info)? needUpdate,
    TResult Function(AppUpdateInfo info)? ensureUpdate,
    TResult Function()? login,
    TResult Function(String uid)? logged,
    TResult Function(String msg)? loginError,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppEvtCheckUpdate value) checkUpdate,
    required TResult Function(_AppEvtNeedUpdate value) needUpdate,
    required TResult Function(_AppEvtEnsureUpdate value) ensureUpdate,
    required TResult Function(_AppEvtLogin value) login,
    required TResult Function(_AppEvtLogged value) logged,
    required TResult Function(_AppEvtLoginError value) loginError,
    required TResult Function(_AppEvtLogout value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppEvtCheckUpdate value)? checkUpdate,
    TResult? Function(_AppEvtNeedUpdate value)? needUpdate,
    TResult? Function(_AppEvtEnsureUpdate value)? ensureUpdate,
    TResult? Function(_AppEvtLogin value)? login,
    TResult? Function(_AppEvtLogged value)? logged,
    TResult? Function(_AppEvtLoginError value)? loginError,
    TResult? Function(_AppEvtLogout value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppEvtCheckUpdate value)? checkUpdate,
    TResult Function(_AppEvtNeedUpdate value)? needUpdate,
    TResult Function(_AppEvtEnsureUpdate value)? ensureUpdate,
    TResult Function(_AppEvtLogin value)? login,
    TResult Function(_AppEvtLogged value)? logged,
    TResult Function(_AppEvtLoginError value)? loginError,
    TResult Function(_AppEvtLogout value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _AppEvtLogout implements AppEvt {
  const factory _AppEvtLogout() = _$_AppEvtLogout;
}

/// @nodoc
mixin _$ChatEvt {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) ask,
    required TResult Function(MsgGpt35Rsp rsp) receive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? ask,
    TResult? Function(MsgGpt35Rsp rsp)? receive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? ask,
    TResult Function(MsgGpt35Rsp rsp)? receive,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatEvtAsk value) ask,
    required TResult Function(_ChatEvtReceive value) receive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatEvtAsk value)? ask,
    TResult? Function(_ChatEvtReceive value)? receive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatEvtAsk value)? ask,
    TResult Function(_ChatEvtReceive value)? receive,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEvtCopyWith<$Res> {
  factory $ChatEvtCopyWith(ChatEvt value, $Res Function(ChatEvt) then) =
      _$ChatEvtCopyWithImpl<$Res, ChatEvt>;
}

/// @nodoc
class _$ChatEvtCopyWithImpl<$Res, $Val extends ChatEvt>
    implements $ChatEvtCopyWith<$Res> {
  _$ChatEvtCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ChatEvtAskCopyWith<$Res> {
  factory _$$_ChatEvtAskCopyWith(
          _$_ChatEvtAsk value, $Res Function(_$_ChatEvtAsk) then) =
      __$$_ChatEvtAskCopyWithImpl<$Res>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$_ChatEvtAskCopyWithImpl<$Res>
    extends _$ChatEvtCopyWithImpl<$Res, _$_ChatEvtAsk>
    implements _$$_ChatEvtAskCopyWith<$Res> {
  __$$_ChatEvtAskCopyWithImpl(
      _$_ChatEvtAsk _value, $Res Function(_$_ChatEvtAsk) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$_ChatEvtAsk(
      null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChatEvtAsk implements _ChatEvtAsk {
  const _$_ChatEvtAsk(this.msg);

  @override
  final String msg;

  @override
  String toString() {
    return 'ChatEvt.ask(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatEvtAsk &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatEvtAskCopyWith<_$_ChatEvtAsk> get copyWith =>
      __$$_ChatEvtAskCopyWithImpl<_$_ChatEvtAsk>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) ask,
    required TResult Function(MsgGpt35Rsp rsp) receive,
  }) {
    return ask(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? ask,
    TResult? Function(MsgGpt35Rsp rsp)? receive,
  }) {
    return ask?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? ask,
    TResult Function(MsgGpt35Rsp rsp)? receive,
    required TResult orElse(),
  }) {
    if (ask != null) {
      return ask(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatEvtAsk value) ask,
    required TResult Function(_ChatEvtReceive value) receive,
  }) {
    return ask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatEvtAsk value)? ask,
    TResult? Function(_ChatEvtReceive value)? receive,
  }) {
    return ask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatEvtAsk value)? ask,
    TResult Function(_ChatEvtReceive value)? receive,
    required TResult orElse(),
  }) {
    if (ask != null) {
      return ask(this);
    }
    return orElse();
  }
}

abstract class _ChatEvtAsk implements ChatEvt {
  const factory _ChatEvtAsk(final String msg) = _$_ChatEvtAsk;

  String get msg;
  @JsonKey(ignore: true)
  _$$_ChatEvtAskCopyWith<_$_ChatEvtAsk> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChatEvtReceiveCopyWith<$Res> {
  factory _$$_ChatEvtReceiveCopyWith(
          _$_ChatEvtReceive value, $Res Function(_$_ChatEvtReceive) then) =
      __$$_ChatEvtReceiveCopyWithImpl<$Res>;
  @useResult
  $Res call({MsgGpt35Rsp rsp});
}

/// @nodoc
class __$$_ChatEvtReceiveCopyWithImpl<$Res>
    extends _$ChatEvtCopyWithImpl<$Res, _$_ChatEvtReceive>
    implements _$$_ChatEvtReceiveCopyWith<$Res> {
  __$$_ChatEvtReceiveCopyWithImpl(
      _$_ChatEvtReceive _value, $Res Function(_$_ChatEvtReceive) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rsp = null,
  }) {
    return _then(_$_ChatEvtReceive(
      null == rsp
          ? _value.rsp
          : rsp // ignore: cast_nullable_to_non_nullable
              as MsgGpt35Rsp,
    ));
  }
}

/// @nodoc

class _$_ChatEvtReceive implements _ChatEvtReceive {
  const _$_ChatEvtReceive(this.rsp);

  @override
  final MsgGpt35Rsp rsp;

  @override
  String toString() {
    return 'ChatEvt.receive(rsp: $rsp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatEvtReceive &&
            (identical(other.rsp, rsp) || other.rsp == rsp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rsp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatEvtReceiveCopyWith<_$_ChatEvtReceive> get copyWith =>
      __$$_ChatEvtReceiveCopyWithImpl<_$_ChatEvtReceive>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) ask,
    required TResult Function(MsgGpt35Rsp rsp) receive,
  }) {
    return receive(rsp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? ask,
    TResult? Function(MsgGpt35Rsp rsp)? receive,
  }) {
    return receive?.call(rsp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? ask,
    TResult Function(MsgGpt35Rsp rsp)? receive,
    required TResult orElse(),
  }) {
    if (receive != null) {
      return receive(rsp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatEvtAsk value) ask,
    required TResult Function(_ChatEvtReceive value) receive,
  }) {
    return receive(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatEvtAsk value)? ask,
    TResult? Function(_ChatEvtReceive value)? receive,
  }) {
    return receive?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatEvtAsk value)? ask,
    TResult Function(_ChatEvtReceive value)? receive,
    required TResult orElse(),
  }) {
    if (receive != null) {
      return receive(this);
    }
    return orElse();
  }
}

abstract class _ChatEvtReceive implements ChatEvt {
  const factory _ChatEvtReceive(final MsgGpt35Rsp rsp) = _$_ChatEvtReceive;

  MsgGpt35Rsp get rsp;
  @JsonKey(ignore: true)
  _$$_ChatEvtReceiveCopyWith<_$_ChatEvtReceive> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AcctEvt {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() createChat,
    required TResult Function() loadChats,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? createChat,
    TResult? Function()? loadChats,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createChat,
    TResult Function()? loadChats,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AcctEvtCreateChat value) createChat,
    required TResult Function(_AcctEvtLoadChats value) loadChats,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AcctEvtCreateChat value)? createChat,
    TResult? Function(_AcctEvtLoadChats value)? loadChats,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AcctEvtCreateChat value)? createChat,
    TResult Function(_AcctEvtLoadChats value)? loadChats,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AcctEvtCopyWith<$Res> {
  factory $AcctEvtCopyWith(AcctEvt value, $Res Function(AcctEvt) then) =
      _$AcctEvtCopyWithImpl<$Res, AcctEvt>;
}

/// @nodoc
class _$AcctEvtCopyWithImpl<$Res, $Val extends AcctEvt>
    implements $AcctEvtCopyWith<$Res> {
  _$AcctEvtCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AcctEvtCreateChatCopyWith<$Res> {
  factory _$$_AcctEvtCreateChatCopyWith(_$_AcctEvtCreateChat value,
          $Res Function(_$_AcctEvtCreateChat) then) =
      __$$_AcctEvtCreateChatCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AcctEvtCreateChatCopyWithImpl<$Res>
    extends _$AcctEvtCopyWithImpl<$Res, _$_AcctEvtCreateChat>
    implements _$$_AcctEvtCreateChatCopyWith<$Res> {
  __$$_AcctEvtCreateChatCopyWithImpl(
      _$_AcctEvtCreateChat _value, $Res Function(_$_AcctEvtCreateChat) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AcctEvtCreateChat implements _AcctEvtCreateChat {
  const _$_AcctEvtCreateChat();

  @override
  String toString() {
    return 'AcctEvt.createChat()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AcctEvtCreateChat);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() createChat,
    required TResult Function() loadChats,
  }) {
    return createChat();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? createChat,
    TResult? Function()? loadChats,
  }) {
    return createChat?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createChat,
    TResult Function()? loadChats,
    required TResult orElse(),
  }) {
    if (createChat != null) {
      return createChat();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AcctEvtCreateChat value) createChat,
    required TResult Function(_AcctEvtLoadChats value) loadChats,
  }) {
    return createChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AcctEvtCreateChat value)? createChat,
    TResult? Function(_AcctEvtLoadChats value)? loadChats,
  }) {
    return createChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AcctEvtCreateChat value)? createChat,
    TResult Function(_AcctEvtLoadChats value)? loadChats,
    required TResult orElse(),
  }) {
    if (createChat != null) {
      return createChat(this);
    }
    return orElse();
  }
}

abstract class _AcctEvtCreateChat implements AcctEvt {
  const factory _AcctEvtCreateChat() = _$_AcctEvtCreateChat;
}

/// @nodoc
abstract class _$$_AcctEvtLoadChatsCopyWith<$Res> {
  factory _$$_AcctEvtLoadChatsCopyWith(
          _$_AcctEvtLoadChats value, $Res Function(_$_AcctEvtLoadChats) then) =
      __$$_AcctEvtLoadChatsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AcctEvtLoadChatsCopyWithImpl<$Res>
    extends _$AcctEvtCopyWithImpl<$Res, _$_AcctEvtLoadChats>
    implements _$$_AcctEvtLoadChatsCopyWith<$Res> {
  __$$_AcctEvtLoadChatsCopyWithImpl(
      _$_AcctEvtLoadChats _value, $Res Function(_$_AcctEvtLoadChats) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AcctEvtLoadChats implements _AcctEvtLoadChats {
  const _$_AcctEvtLoadChats();

  @override
  String toString() {
    return 'AcctEvt.loadChats()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AcctEvtLoadChats);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() createChat,
    required TResult Function() loadChats,
  }) {
    return loadChats();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? createChat,
    TResult? Function()? loadChats,
  }) {
    return loadChats?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createChat,
    TResult Function()? loadChats,
    required TResult orElse(),
  }) {
    if (loadChats != null) {
      return loadChats();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AcctEvtCreateChat value) createChat,
    required TResult Function(_AcctEvtLoadChats value) loadChats,
  }) {
    return loadChats(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AcctEvtCreateChat value)? createChat,
    TResult? Function(_AcctEvtLoadChats value)? loadChats,
  }) {
    return loadChats?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AcctEvtCreateChat value)? createChat,
    TResult Function(_AcctEvtLoadChats value)? loadChats,
    required TResult orElse(),
  }) {
    if (loadChats != null) {
      return loadChats(this);
    }
    return orElse();
  }
}

abstract class _AcctEvtLoadChats implements AcctEvt {
  const factory _AcctEvtLoadChats() = _$_AcctEvtLoadChats;
}
