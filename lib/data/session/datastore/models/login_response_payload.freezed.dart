// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_response_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginResponsePayload _$LoginResponsePayloadFromJson(Map<String, dynamic> json) {
  return _LoginResponsePayload.fromJson(json);
}

/// @nodoc
mixin _$LoginResponsePayload {
  @JsonKey(name: "data")
  LoginResponseData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginResponsePayloadCopyWith<LoginResponsePayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResponsePayloadCopyWith<$Res> {
  factory $LoginResponsePayloadCopyWith(LoginResponsePayload value,
          $Res Function(LoginResponsePayload) then) =
      _$LoginResponsePayloadCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "data") LoginResponseData data});

  $LoginResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class _$LoginResponsePayloadCopyWithImpl<$Res>
    implements $LoginResponsePayloadCopyWith<$Res> {
  _$LoginResponsePayloadCopyWithImpl(this._value, this._then);

  final LoginResponsePayload _value;
  // ignore: unused_field
  final $Res Function(LoginResponsePayload) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LoginResponseData,
    ));
  }

  @override
  $LoginResponseDataCopyWith<$Res> get data {
    return $LoginResponseDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$LoginResponsePayloadCopyWith<$Res>
    implements $LoginResponsePayloadCopyWith<$Res> {
  factory _$LoginResponsePayloadCopyWith(_LoginResponsePayload value,
          $Res Function(_LoginResponsePayload) then) =
      __$LoginResponsePayloadCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "data") LoginResponseData data});

  @override
  $LoginResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class __$LoginResponsePayloadCopyWithImpl<$Res>
    extends _$LoginResponsePayloadCopyWithImpl<$Res>
    implements _$LoginResponsePayloadCopyWith<$Res> {
  __$LoginResponsePayloadCopyWithImpl(
      _LoginResponsePayload _value, $Res Function(_LoginResponsePayload) _then)
      : super(_value, (v) => _then(v as _LoginResponsePayload));

  @override
  _LoginResponsePayload get _value => super._value as _LoginResponsePayload;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_LoginResponsePayload(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LoginResponseData,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_LoginResponsePayload implements _LoginResponsePayload {
  const _$_LoginResponsePayload({@JsonKey(name: "data") required this.data});

  factory _$_LoginResponsePayload.fromJson(Map<String, dynamic> json) =>
      _$$_LoginResponsePayloadFromJson(json);

  @override
  @JsonKey(name: "data")
  final LoginResponseData data;

  @override
  String toString() {
    return 'LoginResponsePayload(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginResponsePayload &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$LoginResponsePayloadCopyWith<_LoginResponsePayload> get copyWith =>
      __$LoginResponsePayloadCopyWithImpl<_LoginResponsePayload>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginResponsePayloadToJson(this);
  }
}

abstract class _LoginResponsePayload implements LoginResponsePayload {
  const factory _LoginResponsePayload(
          {@JsonKey(name: "data") required final LoginResponseData data}) =
      _$_LoginResponsePayload;

  factory _LoginResponsePayload.fromJson(Map<String, dynamic> json) =
      _$_LoginResponsePayload.fromJson;

  @override
  @JsonKey(name: "data")
  LoginResponseData get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoginResponsePayloadCopyWith<_LoginResponsePayload> get copyWith =>
      throw _privateConstructorUsedError;
}
