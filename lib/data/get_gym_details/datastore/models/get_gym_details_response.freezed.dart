// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_gym_details_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetGymDetailsResponse _$GetGymDetailsResponseFromJson(
    Map<String, dynamic> json) {
  return _GetGymDetailsResponse.fromJson(json);
}

/// @nodoc
mixin _$GetGymDetailsResponse {
  bool get status => throw _privateConstructorUsedError;
  QuntoApiResponseErrors? get errors => throw _privateConstructorUsedError;
  GetGymDetailsPayload? get payload => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetGymDetailsResponseCopyWith<GetGymDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetGymDetailsResponseCopyWith<$Res> {
  factory $GetGymDetailsResponseCopyWith(GetGymDetailsResponse value,
          $Res Function(GetGymDetailsResponse) then) =
      _$GetGymDetailsResponseCopyWithImpl<$Res>;
  $Res call(
      {bool status,
      QuntoApiResponseErrors? errors,
      GetGymDetailsPayload? payload});

  $QuntoApiResponseErrorsCopyWith<$Res>? get errors;
  $GetGymDetailsPayloadCopyWith<$Res>? get payload;
}

/// @nodoc
class _$GetGymDetailsResponseCopyWithImpl<$Res>
    implements $GetGymDetailsResponseCopyWith<$Res> {
  _$GetGymDetailsResponseCopyWithImpl(this._value, this._then);

  final GetGymDetailsResponse _value;
  // ignore: unused_field
  final $Res Function(GetGymDetailsResponse) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? errors = freezed,
    Object? payload = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      errors: errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as QuntoApiResponseErrors?,
      payload: payload == freezed
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as GetGymDetailsPayload?,
    ));
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

  @override
  $GetGymDetailsPayloadCopyWith<$Res>? get payload {
    if (_value.payload == null) {
      return null;
    }

    return $GetGymDetailsPayloadCopyWith<$Res>(_value.payload!, (value) {
      return _then(_value.copyWith(payload: value));
    });
  }
}

/// @nodoc
abstract class _$GetGymDetailsResponseCopyWith<$Res>
    implements $GetGymDetailsResponseCopyWith<$Res> {
  factory _$GetGymDetailsResponseCopyWith(_GetGymDetailsResponse value,
          $Res Function(_GetGymDetailsResponse) then) =
      __$GetGymDetailsResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool status,
      QuntoApiResponseErrors? errors,
      GetGymDetailsPayload? payload});

  @override
  $QuntoApiResponseErrorsCopyWith<$Res>? get errors;
  @override
  $GetGymDetailsPayloadCopyWith<$Res>? get payload;
}

/// @nodoc
class __$GetGymDetailsResponseCopyWithImpl<$Res>
    extends _$GetGymDetailsResponseCopyWithImpl<$Res>
    implements _$GetGymDetailsResponseCopyWith<$Res> {
  __$GetGymDetailsResponseCopyWithImpl(_GetGymDetailsResponse _value,
      $Res Function(_GetGymDetailsResponse) _then)
      : super(_value, (v) => _then(v as _GetGymDetailsResponse));

  @override
  _GetGymDetailsResponse get _value => super._value as _GetGymDetailsResponse;

  @override
  $Res call({
    Object? status = freezed,
    Object? errors = freezed,
    Object? payload = freezed,
  }) {
    return _then(_GetGymDetailsResponse(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      errors: errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as QuntoApiResponseErrors?,
      payload: payload == freezed
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as GetGymDetailsPayload?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_GetGymDetailsResponse implements _GetGymDetailsResponse {
  const _$_GetGymDetailsResponse(
      {required this.status, required this.errors, required this.payload});

  factory _$_GetGymDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetGymDetailsResponseFromJson(json);

  @override
  final bool status;
  @override
  final QuntoApiResponseErrors? errors;
  @override
  final GetGymDetailsPayload? payload;

  @override
  String toString() {
    return 'GetGymDetailsResponse(status: $status, errors: $errors, payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetGymDetailsResponse &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.errors, errors) &&
            const DeepCollectionEquality().equals(other.payload, payload));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(errors),
      const DeepCollectionEquality().hash(payload));

  @JsonKey(ignore: true)
  @override
  _$GetGymDetailsResponseCopyWith<_GetGymDetailsResponse> get copyWith =>
      __$GetGymDetailsResponseCopyWithImpl<_GetGymDetailsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetGymDetailsResponseToJson(this);
  }
}

abstract class _GetGymDetailsResponse implements GetGymDetailsResponse {
  const factory _GetGymDetailsResponse(
      {required final bool status,
      required final QuntoApiResponseErrors? errors,
      required final GetGymDetailsPayload? payload}) = _$_GetGymDetailsResponse;

  factory _GetGymDetailsResponse.fromJson(Map<String, dynamic> json) =
      _$_GetGymDetailsResponse.fromJson;

  @override
  bool get status => throw _privateConstructorUsedError;
  @override
  QuntoApiResponseErrors? get errors => throw _privateConstructorUsedError;
  @override
  GetGymDetailsPayload? get payload => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetGymDetailsResponseCopyWith<_GetGymDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
