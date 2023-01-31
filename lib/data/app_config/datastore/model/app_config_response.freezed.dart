// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_config_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppConfigResponse _$AppConfigResponseFromJson(Map<String, dynamic> json) {
  return _AppConfigResponse.fromJson(json);
}

/// @nodoc
mixin _$AppConfigResponse {
  bool get showPrompt => throw _privateConstructorUsedError;
  bool get showBanner => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppConfigResponseCopyWith<AppConfigResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppConfigResponseCopyWith<$Res> {
  factory $AppConfigResponseCopyWith(
          AppConfigResponse value, $Res Function(AppConfigResponse) then) =
      _$AppConfigResponseCopyWithImpl<$Res>;
  $Res call({bool showPrompt, bool showBanner});
}

/// @nodoc
class _$AppConfigResponseCopyWithImpl<$Res>
    implements $AppConfigResponseCopyWith<$Res> {
  _$AppConfigResponseCopyWithImpl(this._value, this._then);

  final AppConfigResponse _value;
  // ignore: unused_field
  final $Res Function(AppConfigResponse) _then;

  @override
  $Res call({
    Object? showPrompt = freezed,
    Object? showBanner = freezed,
  }) {
    return _then(_value.copyWith(
      showPrompt: showPrompt == freezed
          ? _value.showPrompt
          : showPrompt // ignore: cast_nullable_to_non_nullable
              as bool,
      showBanner: showBanner == freezed
          ? _value.showBanner
          : showBanner // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$AppConfigResponseCopyWith<$Res>
    implements $AppConfigResponseCopyWith<$Res> {
  factory _$AppConfigResponseCopyWith(
          _AppConfigResponse value, $Res Function(_AppConfigResponse) then) =
      __$AppConfigResponseCopyWithImpl<$Res>;
  @override
  $Res call({bool showPrompt, bool showBanner});
}

/// @nodoc
class __$AppConfigResponseCopyWithImpl<$Res>
    extends _$AppConfigResponseCopyWithImpl<$Res>
    implements _$AppConfigResponseCopyWith<$Res> {
  __$AppConfigResponseCopyWithImpl(
      _AppConfigResponse _value, $Res Function(_AppConfigResponse) _then)
      : super(_value, (v) => _then(v as _AppConfigResponse));

  @override
  _AppConfigResponse get _value => super._value as _AppConfigResponse;

  @override
  $Res call({
    Object? showPrompt = freezed,
    Object? showBanner = freezed,
  }) {
    return _then(_AppConfigResponse(
      showPrompt: showPrompt == freezed
          ? _value.showPrompt
          : showPrompt // ignore: cast_nullable_to_non_nullable
              as bool,
      showBanner: showBanner == freezed
          ? _value.showBanner
          : showBanner // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppConfigResponse implements _AppConfigResponse {
  const _$_AppConfigResponse(
      {required this.showPrompt, required this.showBanner});

  factory _$_AppConfigResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AppConfigResponseFromJson(json);

  @override
  final bool showPrompt;
  @override
  final bool showBanner;

  @override
  String toString() {
    return 'AppConfigResponse(showPrompt: $showPrompt, showBanner: $showBanner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppConfigResponse &&
            const DeepCollectionEquality()
                .equals(other.showPrompt, showPrompt) &&
            const DeepCollectionEquality()
                .equals(other.showBanner, showBanner));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(showPrompt),
      const DeepCollectionEquality().hash(showBanner));

  @JsonKey(ignore: true)
  @override
  _$AppConfigResponseCopyWith<_AppConfigResponse> get copyWith =>
      __$AppConfigResponseCopyWithImpl<_AppConfigResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppConfigResponseToJson(this);
  }
}

abstract class _AppConfigResponse implements AppConfigResponse {
  const factory _AppConfigResponse(
      {required final bool showPrompt,
      required final bool showBanner}) = _$_AppConfigResponse;

  factory _AppConfigResponse.fromJson(Map<String, dynamic> json) =
      _$_AppConfigResponse.fromJson;

  @override
  bool get showPrompt => throw _privateConstructorUsedError;
  @override
  bool get showBanner => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AppConfigResponseCopyWith<_AppConfigResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
