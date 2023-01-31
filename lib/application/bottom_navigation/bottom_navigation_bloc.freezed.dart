// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bottom_navigation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BottomNavigationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int index) pageTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? pageTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? pageTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PageTapped value) pageTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PageTapped value)? pageTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PageTapped value)? pageTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomNavigationEventCopyWith<$Res> {
  factory $BottomNavigationEventCopyWith(BottomNavigationEvent value,
          $Res Function(BottomNavigationEvent) then) =
      _$BottomNavigationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BottomNavigationEventCopyWithImpl<$Res>
    implements $BottomNavigationEventCopyWith<$Res> {
  _$BottomNavigationEventCopyWithImpl(this._value, this._then);

  final BottomNavigationEvent _value;
  // ignore: unused_field
  final $Res Function(BottomNavigationEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res>
    extends _$BottomNavigationEventCopyWithImpl<$Res>
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
    return 'BottomNavigationEvent.started()';
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
    required TResult Function(int index) pageTapped,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? pageTapped,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? pageTapped,
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
    required TResult Function(_PageTapped value) pageTapped,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PageTapped value)? pageTapped,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PageTapped value)? pageTapped,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements BottomNavigationEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$PageTappedCopyWith<$Res> {
  factory _$PageTappedCopyWith(
          _PageTapped value, $Res Function(_PageTapped) then) =
      __$PageTappedCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$PageTappedCopyWithImpl<$Res>
    extends _$BottomNavigationEventCopyWithImpl<$Res>
    implements _$PageTappedCopyWith<$Res> {
  __$PageTappedCopyWithImpl(
      _PageTapped _value, $Res Function(_PageTapped) _then)
      : super(_value, (v) => _then(v as _PageTapped));

  @override
  _PageTapped get _value => super._value as _PageTapped;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_PageTapped(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PageTapped implements _PageTapped {
  const _$_PageTapped(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'BottomNavigationEvent.pageTapped(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PageTapped &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$PageTappedCopyWith<_PageTapped> get copyWith =>
      __$PageTappedCopyWithImpl<_PageTapped>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int index) pageTapped,
  }) {
    return pageTapped(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? pageTapped,
  }) {
    return pageTapped?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? pageTapped,
    required TResult orElse(),
  }) {
    if (pageTapped != null) {
      return pageTapped(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PageTapped value) pageTapped,
  }) {
    return pageTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PageTapped value)? pageTapped,
  }) {
    return pageTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PageTapped value)? pageTapped,
    required TResult orElse(),
  }) {
    if (pageTapped != null) {
      return pageTapped(this);
    }
    return orElse();
  }
}

abstract class _PageTapped implements BottomNavigationEvent {
  const factory _PageTapped(final int index) = _$_PageTapped;

  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PageTappedCopyWith<_PageTapped> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BottomNavigationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int index) currentIndexChanged,
    required TResult Function() homePageLoaded,
    required TResult Function() gymPageLoaded,
    required TResult Function() gymModePageLoaded,
    required TResult Function() bodyPageLoaded,
    required TResult Function() dietPageLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? currentIndexChanged,
    TResult Function()? homePageLoaded,
    TResult Function()? gymPageLoaded,
    TResult Function()? gymModePageLoaded,
    TResult Function()? bodyPageLoaded,
    TResult Function()? dietPageLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? currentIndexChanged,
    TResult Function()? homePageLoaded,
    TResult Function()? gymPageLoaded,
    TResult Function()? gymModePageLoaded,
    TResult Function()? bodyPageLoaded,
    TResult Function()? dietPageLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CurrentIndexChanged value) currentIndexChanged,
    required TResult Function(_HomePageLoaded value) homePageLoaded,
    required TResult Function(_GymPageLoaded value) gymPageLoaded,
    required TResult Function(_GymModePageLoaded value) gymModePageLoaded,
    required TResult Function(_BodyPageLoaded value) bodyPageLoaded,
    required TResult Function(_DietPageLoaded value) dietPageLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CurrentIndexChanged value)? currentIndexChanged,
    TResult Function(_HomePageLoaded value)? homePageLoaded,
    TResult Function(_GymPageLoaded value)? gymPageLoaded,
    TResult Function(_GymModePageLoaded value)? gymModePageLoaded,
    TResult Function(_BodyPageLoaded value)? bodyPageLoaded,
    TResult Function(_DietPageLoaded value)? dietPageLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CurrentIndexChanged value)? currentIndexChanged,
    TResult Function(_HomePageLoaded value)? homePageLoaded,
    TResult Function(_GymPageLoaded value)? gymPageLoaded,
    TResult Function(_GymModePageLoaded value)? gymModePageLoaded,
    TResult Function(_BodyPageLoaded value)? bodyPageLoaded,
    TResult Function(_DietPageLoaded value)? dietPageLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomNavigationStateCopyWith<$Res> {
  factory $BottomNavigationStateCopyWith(BottomNavigationState value,
          $Res Function(BottomNavigationState) then) =
      _$BottomNavigationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$BottomNavigationStateCopyWithImpl<$Res>
    implements $BottomNavigationStateCopyWith<$Res> {
  _$BottomNavigationStateCopyWithImpl(this._value, this._then);

  final BottomNavigationState _value;
  // ignore: unused_field
  final $Res Function(BottomNavigationState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$BottomNavigationStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'BottomNavigationState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int index) currentIndexChanged,
    required TResult Function() homePageLoaded,
    required TResult Function() gymPageLoaded,
    required TResult Function() gymModePageLoaded,
    required TResult Function() bodyPageLoaded,
    required TResult Function() dietPageLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? currentIndexChanged,
    TResult Function()? homePageLoaded,
    TResult Function()? gymPageLoaded,
    TResult Function()? gymModePageLoaded,
    TResult Function()? bodyPageLoaded,
    TResult Function()? dietPageLoaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? currentIndexChanged,
    TResult Function()? homePageLoaded,
    TResult Function()? gymPageLoaded,
    TResult Function()? gymModePageLoaded,
    TResult Function()? bodyPageLoaded,
    TResult Function()? dietPageLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CurrentIndexChanged value) currentIndexChanged,
    required TResult Function(_HomePageLoaded value) homePageLoaded,
    required TResult Function(_GymPageLoaded value) gymPageLoaded,
    required TResult Function(_GymModePageLoaded value) gymModePageLoaded,
    required TResult Function(_BodyPageLoaded value) bodyPageLoaded,
    required TResult Function(_DietPageLoaded value) dietPageLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CurrentIndexChanged value)? currentIndexChanged,
    TResult Function(_HomePageLoaded value)? homePageLoaded,
    TResult Function(_GymPageLoaded value)? gymPageLoaded,
    TResult Function(_GymModePageLoaded value)? gymModePageLoaded,
    TResult Function(_BodyPageLoaded value)? bodyPageLoaded,
    TResult Function(_DietPageLoaded value)? dietPageLoaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CurrentIndexChanged value)? currentIndexChanged,
    TResult Function(_HomePageLoaded value)? homePageLoaded,
    TResult Function(_GymPageLoaded value)? gymPageLoaded,
    TResult Function(_GymModePageLoaded value)? gymModePageLoaded,
    TResult Function(_BodyPageLoaded value)? bodyPageLoaded,
    TResult Function(_DietPageLoaded value)? dietPageLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements BottomNavigationState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$CurrentIndexChangedCopyWith<$Res> {
  factory _$CurrentIndexChangedCopyWith(_CurrentIndexChanged value,
          $Res Function(_CurrentIndexChanged) then) =
      __$CurrentIndexChangedCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$CurrentIndexChangedCopyWithImpl<$Res>
    extends _$BottomNavigationStateCopyWithImpl<$Res>
    implements _$CurrentIndexChangedCopyWith<$Res> {
  __$CurrentIndexChangedCopyWithImpl(
      _CurrentIndexChanged _value, $Res Function(_CurrentIndexChanged) _then)
      : super(_value, (v) => _then(v as _CurrentIndexChanged));

  @override
  _CurrentIndexChanged get _value => super._value as _CurrentIndexChanged;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_CurrentIndexChanged(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_CurrentIndexChanged implements _CurrentIndexChanged {
  const _$_CurrentIndexChanged(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'BottomNavigationState.currentIndexChanged(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CurrentIndexChanged &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$CurrentIndexChangedCopyWith<_CurrentIndexChanged> get copyWith =>
      __$CurrentIndexChangedCopyWithImpl<_CurrentIndexChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int index) currentIndexChanged,
    required TResult Function() homePageLoaded,
    required TResult Function() gymPageLoaded,
    required TResult Function() gymModePageLoaded,
    required TResult Function() bodyPageLoaded,
    required TResult Function() dietPageLoaded,
  }) {
    return currentIndexChanged(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? currentIndexChanged,
    TResult Function()? homePageLoaded,
    TResult Function()? gymPageLoaded,
    TResult Function()? gymModePageLoaded,
    TResult Function()? bodyPageLoaded,
    TResult Function()? dietPageLoaded,
  }) {
    return currentIndexChanged?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? currentIndexChanged,
    TResult Function()? homePageLoaded,
    TResult Function()? gymPageLoaded,
    TResult Function()? gymModePageLoaded,
    TResult Function()? bodyPageLoaded,
    TResult Function()? dietPageLoaded,
    required TResult orElse(),
  }) {
    if (currentIndexChanged != null) {
      return currentIndexChanged(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CurrentIndexChanged value) currentIndexChanged,
    required TResult Function(_HomePageLoaded value) homePageLoaded,
    required TResult Function(_GymPageLoaded value) gymPageLoaded,
    required TResult Function(_GymModePageLoaded value) gymModePageLoaded,
    required TResult Function(_BodyPageLoaded value) bodyPageLoaded,
    required TResult Function(_DietPageLoaded value) dietPageLoaded,
  }) {
    return currentIndexChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CurrentIndexChanged value)? currentIndexChanged,
    TResult Function(_HomePageLoaded value)? homePageLoaded,
    TResult Function(_GymPageLoaded value)? gymPageLoaded,
    TResult Function(_GymModePageLoaded value)? gymModePageLoaded,
    TResult Function(_BodyPageLoaded value)? bodyPageLoaded,
    TResult Function(_DietPageLoaded value)? dietPageLoaded,
  }) {
    return currentIndexChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CurrentIndexChanged value)? currentIndexChanged,
    TResult Function(_HomePageLoaded value)? homePageLoaded,
    TResult Function(_GymPageLoaded value)? gymPageLoaded,
    TResult Function(_GymModePageLoaded value)? gymModePageLoaded,
    TResult Function(_BodyPageLoaded value)? bodyPageLoaded,
    TResult Function(_DietPageLoaded value)? dietPageLoaded,
    required TResult orElse(),
  }) {
    if (currentIndexChanged != null) {
      return currentIndexChanged(this);
    }
    return orElse();
  }
}

abstract class _CurrentIndexChanged implements BottomNavigationState {
  const factory _CurrentIndexChanged(final int index) = _$_CurrentIndexChanged;

  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CurrentIndexChangedCopyWith<_CurrentIndexChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$HomePageLoadedCopyWith<$Res> {
  factory _$HomePageLoadedCopyWith(
          _HomePageLoaded value, $Res Function(_HomePageLoaded) then) =
      __$HomePageLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$HomePageLoadedCopyWithImpl<$Res>
    extends _$BottomNavigationStateCopyWithImpl<$Res>
    implements _$HomePageLoadedCopyWith<$Res> {
  __$HomePageLoadedCopyWithImpl(
      _HomePageLoaded _value, $Res Function(_HomePageLoaded) _then)
      : super(_value, (v) => _then(v as _HomePageLoaded));

  @override
  _HomePageLoaded get _value => super._value as _HomePageLoaded;
}

/// @nodoc

class _$_HomePageLoaded implements _HomePageLoaded {
  const _$_HomePageLoaded();

  @override
  String toString() {
    return 'BottomNavigationState.homePageLoaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _HomePageLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int index) currentIndexChanged,
    required TResult Function() homePageLoaded,
    required TResult Function() gymPageLoaded,
    required TResult Function() gymModePageLoaded,
    required TResult Function() bodyPageLoaded,
    required TResult Function() dietPageLoaded,
  }) {
    return homePageLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? currentIndexChanged,
    TResult Function()? homePageLoaded,
    TResult Function()? gymPageLoaded,
    TResult Function()? gymModePageLoaded,
    TResult Function()? bodyPageLoaded,
    TResult Function()? dietPageLoaded,
  }) {
    return homePageLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? currentIndexChanged,
    TResult Function()? homePageLoaded,
    TResult Function()? gymPageLoaded,
    TResult Function()? gymModePageLoaded,
    TResult Function()? bodyPageLoaded,
    TResult Function()? dietPageLoaded,
    required TResult orElse(),
  }) {
    if (homePageLoaded != null) {
      return homePageLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CurrentIndexChanged value) currentIndexChanged,
    required TResult Function(_HomePageLoaded value) homePageLoaded,
    required TResult Function(_GymPageLoaded value) gymPageLoaded,
    required TResult Function(_GymModePageLoaded value) gymModePageLoaded,
    required TResult Function(_BodyPageLoaded value) bodyPageLoaded,
    required TResult Function(_DietPageLoaded value) dietPageLoaded,
  }) {
    return homePageLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CurrentIndexChanged value)? currentIndexChanged,
    TResult Function(_HomePageLoaded value)? homePageLoaded,
    TResult Function(_GymPageLoaded value)? gymPageLoaded,
    TResult Function(_GymModePageLoaded value)? gymModePageLoaded,
    TResult Function(_BodyPageLoaded value)? bodyPageLoaded,
    TResult Function(_DietPageLoaded value)? dietPageLoaded,
  }) {
    return homePageLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CurrentIndexChanged value)? currentIndexChanged,
    TResult Function(_HomePageLoaded value)? homePageLoaded,
    TResult Function(_GymPageLoaded value)? gymPageLoaded,
    TResult Function(_GymModePageLoaded value)? gymModePageLoaded,
    TResult Function(_BodyPageLoaded value)? bodyPageLoaded,
    TResult Function(_DietPageLoaded value)? dietPageLoaded,
    required TResult orElse(),
  }) {
    if (homePageLoaded != null) {
      return homePageLoaded(this);
    }
    return orElse();
  }
}

abstract class _HomePageLoaded implements BottomNavigationState {
  const factory _HomePageLoaded() = _$_HomePageLoaded;
}

/// @nodoc
abstract class _$GymPageLoadedCopyWith<$Res> {
  factory _$GymPageLoadedCopyWith(
          _GymPageLoaded value, $Res Function(_GymPageLoaded) then) =
      __$GymPageLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$GymPageLoadedCopyWithImpl<$Res>
    extends _$BottomNavigationStateCopyWithImpl<$Res>
    implements _$GymPageLoadedCopyWith<$Res> {
  __$GymPageLoadedCopyWithImpl(
      _GymPageLoaded _value, $Res Function(_GymPageLoaded) _then)
      : super(_value, (v) => _then(v as _GymPageLoaded));

  @override
  _GymPageLoaded get _value => super._value as _GymPageLoaded;
}

/// @nodoc

class _$_GymPageLoaded implements _GymPageLoaded {
  const _$_GymPageLoaded();

  @override
  String toString() {
    return 'BottomNavigationState.gymPageLoaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GymPageLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int index) currentIndexChanged,
    required TResult Function() homePageLoaded,
    required TResult Function() gymPageLoaded,
    required TResult Function() gymModePageLoaded,
    required TResult Function() bodyPageLoaded,
    required TResult Function() dietPageLoaded,
  }) {
    return gymPageLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? currentIndexChanged,
    TResult Function()? homePageLoaded,
    TResult Function()? gymPageLoaded,
    TResult Function()? gymModePageLoaded,
    TResult Function()? bodyPageLoaded,
    TResult Function()? dietPageLoaded,
  }) {
    return gymPageLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? currentIndexChanged,
    TResult Function()? homePageLoaded,
    TResult Function()? gymPageLoaded,
    TResult Function()? gymModePageLoaded,
    TResult Function()? bodyPageLoaded,
    TResult Function()? dietPageLoaded,
    required TResult orElse(),
  }) {
    if (gymPageLoaded != null) {
      return gymPageLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CurrentIndexChanged value) currentIndexChanged,
    required TResult Function(_HomePageLoaded value) homePageLoaded,
    required TResult Function(_GymPageLoaded value) gymPageLoaded,
    required TResult Function(_GymModePageLoaded value) gymModePageLoaded,
    required TResult Function(_BodyPageLoaded value) bodyPageLoaded,
    required TResult Function(_DietPageLoaded value) dietPageLoaded,
  }) {
    return gymPageLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CurrentIndexChanged value)? currentIndexChanged,
    TResult Function(_HomePageLoaded value)? homePageLoaded,
    TResult Function(_GymPageLoaded value)? gymPageLoaded,
    TResult Function(_GymModePageLoaded value)? gymModePageLoaded,
    TResult Function(_BodyPageLoaded value)? bodyPageLoaded,
    TResult Function(_DietPageLoaded value)? dietPageLoaded,
  }) {
    return gymPageLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CurrentIndexChanged value)? currentIndexChanged,
    TResult Function(_HomePageLoaded value)? homePageLoaded,
    TResult Function(_GymPageLoaded value)? gymPageLoaded,
    TResult Function(_GymModePageLoaded value)? gymModePageLoaded,
    TResult Function(_BodyPageLoaded value)? bodyPageLoaded,
    TResult Function(_DietPageLoaded value)? dietPageLoaded,
    required TResult orElse(),
  }) {
    if (gymPageLoaded != null) {
      return gymPageLoaded(this);
    }
    return orElse();
  }
}

abstract class _GymPageLoaded implements BottomNavigationState {
  const factory _GymPageLoaded() = _$_GymPageLoaded;
}

/// @nodoc
abstract class _$GymModePageLoadedCopyWith<$Res> {
  factory _$GymModePageLoadedCopyWith(
          _GymModePageLoaded value, $Res Function(_GymModePageLoaded) then) =
      __$GymModePageLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$GymModePageLoadedCopyWithImpl<$Res>
    extends _$BottomNavigationStateCopyWithImpl<$Res>
    implements _$GymModePageLoadedCopyWith<$Res> {
  __$GymModePageLoadedCopyWithImpl(
      _GymModePageLoaded _value, $Res Function(_GymModePageLoaded) _then)
      : super(_value, (v) => _then(v as _GymModePageLoaded));

  @override
  _GymModePageLoaded get _value => super._value as _GymModePageLoaded;
}

/// @nodoc

class _$_GymModePageLoaded implements _GymModePageLoaded {
  const _$_GymModePageLoaded();

  @override
  String toString() {
    return 'BottomNavigationState.gymModePageLoaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GymModePageLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int index) currentIndexChanged,
    required TResult Function() homePageLoaded,
    required TResult Function() gymPageLoaded,
    required TResult Function() gymModePageLoaded,
    required TResult Function() bodyPageLoaded,
    required TResult Function() dietPageLoaded,
  }) {
    return gymModePageLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? currentIndexChanged,
    TResult Function()? homePageLoaded,
    TResult Function()? gymPageLoaded,
    TResult Function()? gymModePageLoaded,
    TResult Function()? bodyPageLoaded,
    TResult Function()? dietPageLoaded,
  }) {
    return gymModePageLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? currentIndexChanged,
    TResult Function()? homePageLoaded,
    TResult Function()? gymPageLoaded,
    TResult Function()? gymModePageLoaded,
    TResult Function()? bodyPageLoaded,
    TResult Function()? dietPageLoaded,
    required TResult orElse(),
  }) {
    if (gymModePageLoaded != null) {
      return gymModePageLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CurrentIndexChanged value) currentIndexChanged,
    required TResult Function(_HomePageLoaded value) homePageLoaded,
    required TResult Function(_GymPageLoaded value) gymPageLoaded,
    required TResult Function(_GymModePageLoaded value) gymModePageLoaded,
    required TResult Function(_BodyPageLoaded value) bodyPageLoaded,
    required TResult Function(_DietPageLoaded value) dietPageLoaded,
  }) {
    return gymModePageLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CurrentIndexChanged value)? currentIndexChanged,
    TResult Function(_HomePageLoaded value)? homePageLoaded,
    TResult Function(_GymPageLoaded value)? gymPageLoaded,
    TResult Function(_GymModePageLoaded value)? gymModePageLoaded,
    TResult Function(_BodyPageLoaded value)? bodyPageLoaded,
    TResult Function(_DietPageLoaded value)? dietPageLoaded,
  }) {
    return gymModePageLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CurrentIndexChanged value)? currentIndexChanged,
    TResult Function(_HomePageLoaded value)? homePageLoaded,
    TResult Function(_GymPageLoaded value)? gymPageLoaded,
    TResult Function(_GymModePageLoaded value)? gymModePageLoaded,
    TResult Function(_BodyPageLoaded value)? bodyPageLoaded,
    TResult Function(_DietPageLoaded value)? dietPageLoaded,
    required TResult orElse(),
  }) {
    if (gymModePageLoaded != null) {
      return gymModePageLoaded(this);
    }
    return orElse();
  }
}

abstract class _GymModePageLoaded implements BottomNavigationState {
  const factory _GymModePageLoaded() = _$_GymModePageLoaded;
}

/// @nodoc
abstract class _$BodyPageLoadedCopyWith<$Res> {
  factory _$BodyPageLoadedCopyWith(
          _BodyPageLoaded value, $Res Function(_BodyPageLoaded) then) =
      __$BodyPageLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$BodyPageLoadedCopyWithImpl<$Res>
    extends _$BottomNavigationStateCopyWithImpl<$Res>
    implements _$BodyPageLoadedCopyWith<$Res> {
  __$BodyPageLoadedCopyWithImpl(
      _BodyPageLoaded _value, $Res Function(_BodyPageLoaded) _then)
      : super(_value, (v) => _then(v as _BodyPageLoaded));

  @override
  _BodyPageLoaded get _value => super._value as _BodyPageLoaded;
}

/// @nodoc

class _$_BodyPageLoaded implements _BodyPageLoaded {
  const _$_BodyPageLoaded();

  @override
  String toString() {
    return 'BottomNavigationState.bodyPageLoaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _BodyPageLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int index) currentIndexChanged,
    required TResult Function() homePageLoaded,
    required TResult Function() gymPageLoaded,
    required TResult Function() gymModePageLoaded,
    required TResult Function() bodyPageLoaded,
    required TResult Function() dietPageLoaded,
  }) {
    return bodyPageLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? currentIndexChanged,
    TResult Function()? homePageLoaded,
    TResult Function()? gymPageLoaded,
    TResult Function()? gymModePageLoaded,
    TResult Function()? bodyPageLoaded,
    TResult Function()? dietPageLoaded,
  }) {
    return bodyPageLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? currentIndexChanged,
    TResult Function()? homePageLoaded,
    TResult Function()? gymPageLoaded,
    TResult Function()? gymModePageLoaded,
    TResult Function()? bodyPageLoaded,
    TResult Function()? dietPageLoaded,
    required TResult orElse(),
  }) {
    if (bodyPageLoaded != null) {
      return bodyPageLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CurrentIndexChanged value) currentIndexChanged,
    required TResult Function(_HomePageLoaded value) homePageLoaded,
    required TResult Function(_GymPageLoaded value) gymPageLoaded,
    required TResult Function(_GymModePageLoaded value) gymModePageLoaded,
    required TResult Function(_BodyPageLoaded value) bodyPageLoaded,
    required TResult Function(_DietPageLoaded value) dietPageLoaded,
  }) {
    return bodyPageLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CurrentIndexChanged value)? currentIndexChanged,
    TResult Function(_HomePageLoaded value)? homePageLoaded,
    TResult Function(_GymPageLoaded value)? gymPageLoaded,
    TResult Function(_GymModePageLoaded value)? gymModePageLoaded,
    TResult Function(_BodyPageLoaded value)? bodyPageLoaded,
    TResult Function(_DietPageLoaded value)? dietPageLoaded,
  }) {
    return bodyPageLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CurrentIndexChanged value)? currentIndexChanged,
    TResult Function(_HomePageLoaded value)? homePageLoaded,
    TResult Function(_GymPageLoaded value)? gymPageLoaded,
    TResult Function(_GymModePageLoaded value)? gymModePageLoaded,
    TResult Function(_BodyPageLoaded value)? bodyPageLoaded,
    TResult Function(_DietPageLoaded value)? dietPageLoaded,
    required TResult orElse(),
  }) {
    if (bodyPageLoaded != null) {
      return bodyPageLoaded(this);
    }
    return orElse();
  }
}

abstract class _BodyPageLoaded implements BottomNavigationState {
  const factory _BodyPageLoaded() = _$_BodyPageLoaded;
}

/// @nodoc
abstract class _$DietPageLoadedCopyWith<$Res> {
  factory _$DietPageLoadedCopyWith(
          _DietPageLoaded value, $Res Function(_DietPageLoaded) then) =
      __$DietPageLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$DietPageLoadedCopyWithImpl<$Res>
    extends _$BottomNavigationStateCopyWithImpl<$Res>
    implements _$DietPageLoadedCopyWith<$Res> {
  __$DietPageLoadedCopyWithImpl(
      _DietPageLoaded _value, $Res Function(_DietPageLoaded) _then)
      : super(_value, (v) => _then(v as _DietPageLoaded));

  @override
  _DietPageLoaded get _value => super._value as _DietPageLoaded;
}

/// @nodoc

class _$_DietPageLoaded implements _DietPageLoaded {
  const _$_DietPageLoaded();

  @override
  String toString() {
    return 'BottomNavigationState.dietPageLoaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _DietPageLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int index) currentIndexChanged,
    required TResult Function() homePageLoaded,
    required TResult Function() gymPageLoaded,
    required TResult Function() gymModePageLoaded,
    required TResult Function() bodyPageLoaded,
    required TResult Function() dietPageLoaded,
  }) {
    return dietPageLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? currentIndexChanged,
    TResult Function()? homePageLoaded,
    TResult Function()? gymPageLoaded,
    TResult Function()? gymModePageLoaded,
    TResult Function()? bodyPageLoaded,
    TResult Function()? dietPageLoaded,
  }) {
    return dietPageLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? currentIndexChanged,
    TResult Function()? homePageLoaded,
    TResult Function()? gymPageLoaded,
    TResult Function()? gymModePageLoaded,
    TResult Function()? bodyPageLoaded,
    TResult Function()? dietPageLoaded,
    required TResult orElse(),
  }) {
    if (dietPageLoaded != null) {
      return dietPageLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CurrentIndexChanged value) currentIndexChanged,
    required TResult Function(_HomePageLoaded value) homePageLoaded,
    required TResult Function(_GymPageLoaded value) gymPageLoaded,
    required TResult Function(_GymModePageLoaded value) gymModePageLoaded,
    required TResult Function(_BodyPageLoaded value) bodyPageLoaded,
    required TResult Function(_DietPageLoaded value) dietPageLoaded,
  }) {
    return dietPageLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CurrentIndexChanged value)? currentIndexChanged,
    TResult Function(_HomePageLoaded value)? homePageLoaded,
    TResult Function(_GymPageLoaded value)? gymPageLoaded,
    TResult Function(_GymModePageLoaded value)? gymModePageLoaded,
    TResult Function(_BodyPageLoaded value)? bodyPageLoaded,
    TResult Function(_DietPageLoaded value)? dietPageLoaded,
  }) {
    return dietPageLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CurrentIndexChanged value)? currentIndexChanged,
    TResult Function(_HomePageLoaded value)? homePageLoaded,
    TResult Function(_GymPageLoaded value)? gymPageLoaded,
    TResult Function(_GymModePageLoaded value)? gymModePageLoaded,
    TResult Function(_BodyPageLoaded value)? bodyPageLoaded,
    TResult Function(_DietPageLoaded value)? dietPageLoaded,
    required TResult orElse(),
  }) {
    if (dietPageLoaded != null) {
      return dietPageLoaded(this);
    }
    return orElse();
  }
}

abstract class _DietPageLoaded implements BottomNavigationState {
  const factory _DietPageLoaded() = _$_DietPageLoaded;
}
