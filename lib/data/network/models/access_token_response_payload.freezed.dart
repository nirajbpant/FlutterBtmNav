// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'access_token_response_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccessTokenResponsePayload _$AccessTokenResponsePayloadFromJson(
    Map<String, dynamic> json) {
  return _AccessTokenResponsePayload.fromJson(json);
}

/// @nodoc
mixin _$AccessTokenResponsePayload {
  @JsonKey(name: "data")
  AccessTokenResponse? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccessTokenResponsePayloadCopyWith<AccessTokenResponsePayload>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccessTokenResponsePayloadCopyWith<$Res> {
  factory $AccessTokenResponsePayloadCopyWith(AccessTokenResponsePayload value,
          $Res Function(AccessTokenResponsePayload) then) =
      _$AccessTokenResponsePayloadCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "data") AccessTokenResponse? data});

  $AccessTokenResponseCopyWith<$Res>? get data;
}

/// @nodoc
class _$AccessTokenResponsePayloadCopyWithImpl<$Res>
    implements $AccessTokenResponsePayloadCopyWith<$Res> {
  _$AccessTokenResponsePayloadCopyWithImpl(this._value, this._then);

  final AccessTokenResponsePayload _value;
  // ignore: unused_field
  final $Res Function(AccessTokenResponsePayload) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AccessTokenResponse?,
    ));
  }

  @override
  $AccessTokenResponseCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $AccessTokenResponseCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$AccessTokenResponsePayloadCopyWith<$Res>
    implements $AccessTokenResponsePayloadCopyWith<$Res> {
  factory _$AccessTokenResponsePayloadCopyWith(
          _AccessTokenResponsePayload value,
          $Res Function(_AccessTokenResponsePayload) then) =
      __$AccessTokenResponsePayloadCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "data") AccessTokenResponse? data});

  @override
  $AccessTokenResponseCopyWith<$Res>? get data;
}

/// @nodoc
class __$AccessTokenResponsePayloadCopyWithImpl<$Res>
    extends _$AccessTokenResponsePayloadCopyWithImpl<$Res>
    implements _$AccessTokenResponsePayloadCopyWith<$Res> {
  __$AccessTokenResponsePayloadCopyWithImpl(_AccessTokenResponsePayload _value,
      $Res Function(_AccessTokenResponsePayload) _then)
      : super(_value, (v) => _then(v as _AccessTokenResponsePayload));

  @override
  _AccessTokenResponsePayload get _value =>
      super._value as _AccessTokenResponsePayload;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_AccessTokenResponsePayload(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AccessTokenResponse?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_AccessTokenResponsePayload implements _AccessTokenResponsePayload {
  const _$_AccessTokenResponsePayload(
      {@JsonKey(name: "data") required this.data});

  factory _$_AccessTokenResponsePayload.fromJson(Map<String, dynamic> json) =>
      _$$_AccessTokenResponsePayloadFromJson(json);

  @override
  @JsonKey(name: "data")
  final AccessTokenResponse? data;

  @override
  String toString() {
    return 'AccessTokenResponsePayload(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AccessTokenResponsePayload &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$AccessTokenResponsePayloadCopyWith<_AccessTokenResponsePayload>
      get copyWith => __$AccessTokenResponsePayloadCopyWithImpl<
          _AccessTokenResponsePayload>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccessTokenResponsePayloadToJson(this);
  }
}

abstract class _AccessTokenResponsePayload
    implements AccessTokenResponsePayload {
  const factory _AccessTokenResponsePayload(
          {@JsonKey(name: "data") required final AccessTokenResponse? data}) =
      _$_AccessTokenResponsePayload;

  factory _AccessTokenResponsePayload.fromJson(Map<String, dynamic> json) =
      _$_AccessTokenResponsePayload.fromJson;

  @override
  @JsonKey(name: "data")
  AccessTokenResponse? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AccessTokenResponsePayloadCopyWith<_AccessTokenResponsePayload>
      get copyWith => throw _privateConstructorUsedError;
}
