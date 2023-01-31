// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'splash_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SplashEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashEventCopyWith<$Res> {
  factory $SplashEventCopyWith(
          SplashEvent value, $Res Function(SplashEvent) then) =
      _$SplashEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SplashEventCopyWithImpl<$Res> implements $SplashEventCopyWith<$Res> {
  _$SplashEventCopyWithImpl(this._value, this._then);

  final SplashEvent _value;
  // ignore: unused_field
  final $Res Function(SplashEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$SplashEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'SplashEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SplashEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
mixin _$SplashState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() userExistsWithProfileNotSetup,
    required TResult Function() userExistsWithAllDetailsCompleted,
    required TResult Function() userDoesntExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? userExistsWithProfileNotSetup,
    TResult Function()? userExistsWithAllDetailsCompleted,
    TResult Function()? userDoesntExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? userExistsWithProfileNotSetup,
    TResult Function()? userExistsWithAllDetailsCompleted,
    TResult Function()? userDoesntExist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_UserExistsWithProfileNotSetup value)
        userExistsWithProfileNotSetup,
    required TResult Function(_UserExistsWithAllDetailsCompleted value)
        userExistsWithAllDetailsCompleted,
    required TResult Function(_UserDoesntExists value) userDoesntExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_UserExistsWithProfileNotSetup value)?
        userExistsWithProfileNotSetup,
    TResult Function(_UserExistsWithAllDetailsCompleted value)?
        userExistsWithAllDetailsCompleted,
    TResult Function(_UserDoesntExists value)? userDoesntExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_UserExistsWithProfileNotSetup value)?
        userExistsWithProfileNotSetup,
    TResult Function(_UserExistsWithAllDetailsCompleted value)?
        userExistsWithAllDetailsCompleted,
    TResult Function(_UserDoesntExists value)? userDoesntExist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashStateCopyWith<$Res> {
  factory $SplashStateCopyWith(
          SplashState value, $Res Function(SplashState) then) =
      _$SplashStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SplashStateCopyWithImpl<$Res> implements $SplashStateCopyWith<$Res> {
  _$SplashStateCopyWithImpl(this._value, this._then);

  final SplashState _value;
  // ignore: unused_field
  final $Res Function(SplashState) _then;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$SplashStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'SplashState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() userExistsWithProfileNotSetup,
    required TResult Function() userExistsWithAllDetailsCompleted,
    required TResult Function() userDoesntExist,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? userExistsWithProfileNotSetup,
    TResult Function()? userExistsWithAllDetailsCompleted,
    TResult Function()? userDoesntExist,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? userExistsWithProfileNotSetup,
    TResult Function()? userExistsWithAllDetailsCompleted,
    TResult Function()? userDoesntExist,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_UserExistsWithProfileNotSetup value)
        userExistsWithProfileNotSetup,
    required TResult Function(_UserExistsWithAllDetailsCompleted value)
        userExistsWithAllDetailsCompleted,
    required TResult Function(_UserDoesntExists value) userDoesntExist,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_UserExistsWithProfileNotSetup value)?
        userExistsWithProfileNotSetup,
    TResult Function(_UserExistsWithAllDetailsCompleted value)?
        userExistsWithAllDetailsCompleted,
    TResult Function(_UserDoesntExists value)? userDoesntExist,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_UserExistsWithProfileNotSetup value)?
        userExistsWithProfileNotSetup,
    TResult Function(_UserExistsWithAllDetailsCompleted value)?
        userExistsWithAllDetailsCompleted,
    TResult Function(_UserDoesntExists value)? userDoesntExist,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SplashState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$UserExistsWithProfileNotSetupCopyWith<$Res> {
  factory _$UserExistsWithProfileNotSetupCopyWith(
          _UserExistsWithProfileNotSetup value,
          $Res Function(_UserExistsWithProfileNotSetup) then) =
      __$UserExistsWithProfileNotSetupCopyWithImpl<$Res>;
}

/// @nodoc
class __$UserExistsWithProfileNotSetupCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res>
    implements _$UserExistsWithProfileNotSetupCopyWith<$Res> {
  __$UserExistsWithProfileNotSetupCopyWithImpl(
      _UserExistsWithProfileNotSetup _value,
      $Res Function(_UserExistsWithProfileNotSetup) _then)
      : super(_value, (v) => _then(v as _UserExistsWithProfileNotSetup));

  @override
  _UserExistsWithProfileNotSetup get _value =>
      super._value as _UserExistsWithProfileNotSetup;
}

/// @nodoc

class _$_UserExistsWithProfileNotSetup
    implements _UserExistsWithProfileNotSetup {
  const _$_UserExistsWithProfileNotSetup();

  @override
  String toString() {
    return 'SplashState.userExistsWithProfileNotSetup()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserExistsWithProfileNotSetup);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() userExistsWithProfileNotSetup,
    required TResult Function() userExistsWithAllDetailsCompleted,
    required TResult Function() userDoesntExist,
  }) {
    return userExistsWithProfileNotSetup();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? userExistsWithProfileNotSetup,
    TResult Function()? userExistsWithAllDetailsCompleted,
    TResult Function()? userDoesntExist,
  }) {
    return userExistsWithProfileNotSetup?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? userExistsWithProfileNotSetup,
    TResult Function()? userExistsWithAllDetailsCompleted,
    TResult Function()? userDoesntExist,
    required TResult orElse(),
  }) {
    if (userExistsWithProfileNotSetup != null) {
      return userExistsWithProfileNotSetup();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_UserExistsWithProfileNotSetup value)
        userExistsWithProfileNotSetup,
    required TResult Function(_UserExistsWithAllDetailsCompleted value)
        userExistsWithAllDetailsCompleted,
    required TResult Function(_UserDoesntExists value) userDoesntExist,
  }) {
    return userExistsWithProfileNotSetup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_UserExistsWithProfileNotSetup value)?
        userExistsWithProfileNotSetup,
    TResult Function(_UserExistsWithAllDetailsCompleted value)?
        userExistsWithAllDetailsCompleted,
    TResult Function(_UserDoesntExists value)? userDoesntExist,
  }) {
    return userExistsWithProfileNotSetup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_UserExistsWithProfileNotSetup value)?
        userExistsWithProfileNotSetup,
    TResult Function(_UserExistsWithAllDetailsCompleted value)?
        userExistsWithAllDetailsCompleted,
    TResult Function(_UserDoesntExists value)? userDoesntExist,
    required TResult orElse(),
  }) {
    if (userExistsWithProfileNotSetup != null) {
      return userExistsWithProfileNotSetup(this);
    }
    return orElse();
  }
}

abstract class _UserExistsWithProfileNotSetup implements SplashState {
  const factory _UserExistsWithProfileNotSetup() =
      _$_UserExistsWithProfileNotSetup;
}

/// @nodoc
abstract class _$UserExistsWithAllDetailsCompletedCopyWith<$Res> {
  factory _$UserExistsWithAllDetailsCompletedCopyWith(
          _UserExistsWithAllDetailsCompleted value,
          $Res Function(_UserExistsWithAllDetailsCompleted) then) =
      __$UserExistsWithAllDetailsCompletedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UserExistsWithAllDetailsCompletedCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res>
    implements _$UserExistsWithAllDetailsCompletedCopyWith<$Res> {
  __$UserExistsWithAllDetailsCompletedCopyWithImpl(
      _UserExistsWithAllDetailsCompleted _value,
      $Res Function(_UserExistsWithAllDetailsCompleted) _then)
      : super(_value, (v) => _then(v as _UserExistsWithAllDetailsCompleted));

  @override
  _UserExistsWithAllDetailsCompleted get _value =>
      super._value as _UserExistsWithAllDetailsCompleted;
}

/// @nodoc

class _$_UserExistsWithAllDetailsCompleted
    implements _UserExistsWithAllDetailsCompleted {
  const _$_UserExistsWithAllDetailsCompleted();

  @override
  String toString() {
    return 'SplashState.userExistsWithAllDetailsCompleted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserExistsWithAllDetailsCompleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() userExistsWithProfileNotSetup,
    required TResult Function() userExistsWithAllDetailsCompleted,
    required TResult Function() userDoesntExist,
  }) {
    return userExistsWithAllDetailsCompleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? userExistsWithProfileNotSetup,
    TResult Function()? userExistsWithAllDetailsCompleted,
    TResult Function()? userDoesntExist,
  }) {
    return userExistsWithAllDetailsCompleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? userExistsWithProfileNotSetup,
    TResult Function()? userExistsWithAllDetailsCompleted,
    TResult Function()? userDoesntExist,
    required TResult orElse(),
  }) {
    if (userExistsWithAllDetailsCompleted != null) {
      return userExistsWithAllDetailsCompleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_UserExistsWithProfileNotSetup value)
        userExistsWithProfileNotSetup,
    required TResult Function(_UserExistsWithAllDetailsCompleted value)
        userExistsWithAllDetailsCompleted,
    required TResult Function(_UserDoesntExists value) userDoesntExist,
  }) {
    return userExistsWithAllDetailsCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_UserExistsWithProfileNotSetup value)?
        userExistsWithProfileNotSetup,
    TResult Function(_UserExistsWithAllDetailsCompleted value)?
        userExistsWithAllDetailsCompleted,
    TResult Function(_UserDoesntExists value)? userDoesntExist,
  }) {
    return userExistsWithAllDetailsCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_UserExistsWithProfileNotSetup value)?
        userExistsWithProfileNotSetup,
    TResult Function(_UserExistsWithAllDetailsCompleted value)?
        userExistsWithAllDetailsCompleted,
    TResult Function(_UserDoesntExists value)? userDoesntExist,
    required TResult orElse(),
  }) {
    if (userExistsWithAllDetailsCompleted != null) {
      return userExistsWithAllDetailsCompleted(this);
    }
    return orElse();
  }
}

abstract class _UserExistsWithAllDetailsCompleted implements SplashState {
  const factory _UserExistsWithAllDetailsCompleted() =
      _$_UserExistsWithAllDetailsCompleted;
}

/// @nodoc
abstract class _$UserDoesntExistsCopyWith<$Res> {
  factory _$UserDoesntExistsCopyWith(
          _UserDoesntExists value, $Res Function(_UserDoesntExists) then) =
      __$UserDoesntExistsCopyWithImpl<$Res>;
}

/// @nodoc
class __$UserDoesntExistsCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res>
    implements _$UserDoesntExistsCopyWith<$Res> {
  __$UserDoesntExistsCopyWithImpl(
      _UserDoesntExists _value, $Res Function(_UserDoesntExists) _then)
      : super(_value, (v) => _then(v as _UserDoesntExists));

  @override
  _UserDoesntExists get _value => super._value as _UserDoesntExists;
}

/// @nodoc

class _$_UserDoesntExists implements _UserDoesntExists {
  const _$_UserDoesntExists();

  @override
  String toString() {
    return 'SplashState.userDoesntExist()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _UserDoesntExists);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() userExistsWithProfileNotSetup,
    required TResult Function() userExistsWithAllDetailsCompleted,
    required TResult Function() userDoesntExist,
  }) {
    return userDoesntExist();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? userExistsWithProfileNotSetup,
    TResult Function()? userExistsWithAllDetailsCompleted,
    TResult Function()? userDoesntExist,
  }) {
    return userDoesntExist?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? userExistsWithProfileNotSetup,
    TResult Function()? userExistsWithAllDetailsCompleted,
    TResult Function()? userDoesntExist,
    required TResult orElse(),
  }) {
    if (userDoesntExist != null) {
      return userDoesntExist();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_UserExistsWithProfileNotSetup value)
        userExistsWithProfileNotSetup,
    required TResult Function(_UserExistsWithAllDetailsCompleted value)
        userExistsWithAllDetailsCompleted,
    required TResult Function(_UserDoesntExists value) userDoesntExist,
  }) {
    return userDoesntExist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_UserExistsWithProfileNotSetup value)?
        userExistsWithProfileNotSetup,
    TResult Function(_UserExistsWithAllDetailsCompleted value)?
        userExistsWithAllDetailsCompleted,
    TResult Function(_UserDoesntExists value)? userDoesntExist,
  }) {
    return userDoesntExist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_UserExistsWithProfileNotSetup value)?
        userExistsWithProfileNotSetup,
    TResult Function(_UserExistsWithAllDetailsCompleted value)?
        userExistsWithAllDetailsCompleted,
    TResult Function(_UserDoesntExists value)? userDoesntExist,
    required TResult orElse(),
  }) {
    if (userDoesntExist != null) {
      return userDoesntExist(this);
    }
    return orElse();
  }
}

abstract class _UserDoesntExists implements SplashState {
  const factory _UserDoesntExists() = _$_UserDoesntExists;
}
