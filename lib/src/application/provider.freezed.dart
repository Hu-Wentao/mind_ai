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
