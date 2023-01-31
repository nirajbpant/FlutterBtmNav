// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'access_token_base_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccessTokenBaseResponse _$AccessTokenBaseResponseFromJson(
    Map<String, dynamic> json) {
  return _AccessTokenBaseResponse.fromJson(json);
}

/// @nodoc
mixin _$AccessTokenBaseResponse {
  @JsonKey(name: "payload")
  AccessTokenResponsePayload? get payload => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccessTokenBaseResponseCopyWith<AccessTokenBaseResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccessTokenBaseResponseCopyWith<$Res> {
  factory $AccessTokenBaseResponseCopyWith(AccessTokenBaseResponse value,
          $Res Function(AccessTokenBaseResponse) then) =
      _$AccessTokenBaseResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "payload") AccessTokenResponsePayload? payload});

  $AccessTokenResponsePayloadCopyWith<$Res>? get payload;
}

/// @nodoc
class _$AccessTokenBaseResponseCopyWithImpl<$Res>
    implements $AccessTokenBaseResponseCopyWith<$Res> {
  _$AccessTokenBaseResponseCopyWithImpl(this._value, this._then);

  final AccessTokenBaseResponse _value;
  // ignore: unused_field
  final $Res Function(AccessTokenBaseResponse) _then;

  @override
  $Res call({
    Object? payload = freezed,
  }) {
    return _then(_value.copyWith(
      payload: payload == freezed
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as AccessTokenResponsePayload?,
    ));
  }

  @override
  $AccessTokenResponsePayloadCopyWith<$Res>? get payload {
    if (_value.payload == null) {
      return null;
    }

    return $AccessTokenResponsePayloadCopyWith<$Res>(_value.payload!, (value) {
      return _then(_value.copyWith(payload: value));
    });
  }
}

/// @nodoc
abstract class _$AccessTokenBaseResponseCopyWith<$Res>
    implements $AccessTokenBaseResponseCopyWith<$Res> {
  factory _$AccessTokenBaseResponseCopyWith(_AccessTokenBaseResponse value,
          $Res Function(_AccessTokenBaseResponse) then) =
      __$AccessTokenBaseResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "payload") AccessTokenResponsePayload? payload});

  @override
  $AccessTokenResponsePayloadCopyWith<$Res>? get payload;
}

/// @nodoc
class __$AccessTokenBaseResponseCopyWithImpl<$Res>
    extends _$AccessTokenBaseResponseCopyWithImpl<$Res>
    implements _$AccessTokenBaseResponseCopyWith<$Res> {
  __$AccessTokenBaseResponseCopyWithImpl(_AccessTokenBaseResponse _value,
      $Res Function(_AccessTokenBaseResponse) _then)
      : super(_value, (v) => _then(v as _AccessTokenBaseResponse));

  @override
  _AccessTokenBaseResponse get _value =>
      super._value as _AccessTokenBaseResponse;

  @override
  $Res call({
    Object? payload = freezed,
  }) {
    return _then(_AccessTokenBaseResponse(
      payload: payload == freezed
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as AccessTokenResponsePayload?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_AccessTokenBaseResponse implements _AccessTokenBaseResponse {
  const _$_AccessTokenBaseResponse(
      {@JsonKey(name: "payload") required this.payload});

  factory _$_AccessTokenBaseResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AccessTokenBaseResponseFromJson(json);

  @override
  @JsonKey(name: "payload")
  final AccessTokenResponsePayload? payload;

  @override
  String toString() {
    return 'AccessTokenBaseResponse(payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AccessTokenBaseResponse &&
            const DeepCollectionEquality().equals(other.payload, payload));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(payload));

  @JsonKey(ignore: true)
  @override
  _$AccessTokenBaseResponseCopyWith<_AccessTokenBaseResponse> get copyWith =>
      __$AccessTokenBaseResponseCopyWithImpl<_AccessTokenBaseResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccessTokenBaseResponseToJson(this);
  }
}

abstract class _AccessTokenBaseResponse implements AccessTokenBaseResponse {
  const factory _AccessTokenBaseResponse(
          {@JsonKey(name: "payload")
              required final AccessTokenResponsePayload? payload}) =
      _$_AccessTokenBaseResponse;

  factory _AccessTokenBaseResponse.fromJson(Map<String, dynamic> json) =
      _$_AccessTokenBaseResponse.fromJson;

  @override
  @JsonKey(name: "payload")
  AccessTokenResponsePayload? get payload => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AccessTokenBaseResponseCopyWith<_AccessTokenBaseResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
