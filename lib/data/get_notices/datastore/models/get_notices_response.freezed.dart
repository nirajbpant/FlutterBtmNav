// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_notices_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetNoticesResponse _$GetNoticesResponseFromJson(Map<String, dynamic> json) {
  return _GetNoticesResponse.fromJson(json);
}

/// @nodoc
mixin _$GetNoticesResponse {
  bool get status => throw _privateConstructorUsedError;
  GetNoticesResponsePayload? get payload => throw _privateConstructorUsedError;
  QuntoApiResponseErrors? get errors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetNoticesResponseCopyWith<GetNoticesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetNoticesResponseCopyWith<$Res> {
  factory $GetNoticesResponseCopyWith(
          GetNoticesResponse value, $Res Function(GetNoticesResponse) then) =
      _$GetNoticesResponseCopyWithImpl<$Res>;
  $Res call(
      {bool status,
      GetNoticesResponsePayload? payload,
      QuntoApiResponseErrors? errors});

  $GetNoticesResponsePayloadCopyWith<$Res>? get payload;
  $QuntoApiResponseErrorsCopyWith<$Res>? get errors;
}

/// @nodoc
class _$GetNoticesResponseCopyWithImpl<$Res>
    implements $GetNoticesResponseCopyWith<$Res> {
  _$GetNoticesResponseCopyWithImpl(this._value, this._then);

  final GetNoticesResponse _value;
  // ignore: unused_field
  final $Res Function(GetNoticesResponse) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? payload = freezed,
    Object? errors = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      payload: payload == freezed
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as GetNoticesResponsePayload?,
      errors: errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as QuntoApiResponseErrors?,
    ));
  }

  @override
  $GetNoticesResponsePayloadCopyWith<$Res>? get payload {
    if (_value.payload == null) {
      return null;
    }

    return $GetNoticesResponsePayloadCopyWith<$Res>(_value.payload!, (value) {
      return _then(_value.copyWith(payload: value));
    });
  }

  @override
  $QuntoApiResponseErrorsCopyWith<$Res>? get errors {
    if (_value.errors == null) {
      return null;
    }

    return $QuntoApiResponseErrorsCopyWith<$Res>(_value.errors!, (value) {
      return _then(_value.copyWith(errors: value));
    });
  }
}

/// @nodoc
abstract class _$GetNoticesResponseCopyWith<$Res>
    implements $GetNoticesResponseCopyWith<$Res> {
  factory _$GetNoticesResponseCopyWith(
          _GetNoticesResponse value, $Res Function(_GetNoticesResponse) then) =
      __$GetNoticesResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool status,
      GetNoticesResponsePayload? payload,
      QuntoApiResponseErrors? errors});

  @override
  $GetNoticesResponsePayloadCopyWith<$Res>? get payload;
  @override
  $QuntoApiResponseErrorsCopyWith<$Res>? get errors;
}

/// @nodoc
class __$GetNoticesResponseCopyWithImpl<$Res>
    extends _$GetNoticesResponseCopyWithImpl<$Res>
    implements _$GetNoticesResponseCopyWith<$Res> {
  __$GetNoticesResponseCopyWithImpl(
      _GetNoticesResponse _value, $Res Function(_GetNoticesResponse) _then)
      : super(_value, (v) => _then(v as _GetNoticesResponse));

  @override
  _GetNoticesResponse get _value => super._value as _GetNoticesResponse;

  @override
  $Res call({
    Object? status = freezed,
    Object? payload = freezed,
    Object? errors = freezed,
  }) {
    return _then(_GetNoticesResponse(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      payload: payload == freezed
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as GetNoticesResponsePayload?,
      errors: errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as QuntoApiResponseErrors?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_GetNoticesResponse implements _GetNoticesResponse {
  const _$_GetNoticesResponse(
      {required this.status, required this.payload, required this.errors});

  factory _$_GetNoticesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetNoticesResponseFromJson(json);

  @override
  final bool status;
  @override
  final GetNoticesResponsePayload? payload;
  @override
  final QuntoApiResponseErrors? errors;

  @override
  String toString() {
    return 'GetNoticesResponse(status: $status, payload: $payload, errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetNoticesResponse &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.payload, payload) &&
            const DeepCollectionEquality().equals(other.errors, errors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(payload),
      const DeepCollectionEquality().hash(errors));

  @JsonKey(ignore: true)
  @override
  _$GetNoticesResponseCopyWith<_GetNoticesResponse> get copyWith =>
      __$GetNoticesResponseCopyWithImpl<_GetNoticesResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetNoticesResponseToJson(this);
  }
}

abstract class _GetNoticesResponse implements GetNoticesResponse {
  const factory _GetNoticesResponse(
      {required final bool status,
      required final GetNoticesResponsePayload? payload,
      required final QuntoApiResponseErrors? errors}) = _$_GetNoticesResponse;

  factory _GetNoticesResponse.fromJson(Map<String, dynamic> json) =
      _$_GetNoticesResponse.fromJson;

  @override
  bool get status => throw _privateConstructorUsedError;
  @override
  GetNoticesResponsePayload? get payload => throw _privateConstructorUsedError;
  @override
  QuntoApiResponseErrors? get errors => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetNoticesResponseCopyWith<_GetNoticesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
