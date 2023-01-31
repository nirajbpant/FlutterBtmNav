// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_profile_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserProfileResponse _$UserProfileResponseFromJson(Map<String, dynamic> json) {
  return _UserProfileResponse.fromJson(json);
}

/// @nodoc
mixin _$UserProfileResponse {
  @JsonKey(name: "status")
  bool get status => throw _privateConstructorUsedError;
  UserProfileResponsePayload? get payload => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProfileResponseCopyWith<UserProfileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileResponseCopyWith<$Res> {
  factory $UserProfileResponseCopyWith(
          UserProfileResponse value, $Res Function(UserProfileResponse) then) =
      _$UserProfileResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "status") bool status,
      UserProfileResponsePayload? payload});

  $UserProfileResponsePayloadCopyWith<$Res>? get payload;
}

/// @nodoc
class _$UserProfileResponseCopyWithImpl<$Res>
    implements $UserProfileResponseCopyWith<$Res> {
  _$UserProfileResponseCopyWithImpl(this._value, this._then);

  final UserProfileResponse _value;
  // ignore: unused_field
  final $Res Function(UserProfileResponse) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? payload = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      payload: payload == freezed
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as UserProfileResponsePayload?,
    ));
  }

  @override
  $UserProfileResponsePayloadCopyWith<$Res>? get payload {
    if (_value.payload == null) {
      return null;
    }

    return $UserProfileResponsePayloadCopyWith<$Res>(_value.payload!, (value) {
      return _then(_value.copyWith(payload: value));
    });
  }
}

/// @nodoc
abstract class _$UserProfileResponseCopyWith<$Res>
    implements $UserProfileResponseCopyWith<$Res> {
  factory _$UserProfileResponseCopyWith(_UserProfileResponse value,
          $Res Function(_UserProfileResponse) then) =
      __$UserProfileResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "status") bool status,
      UserProfileResponsePayload? payload});

  @override
  $UserProfileResponsePayloadCopyWith<$Res>? get payload;
}

/// @nodoc
class __$UserProfileResponseCopyWithImpl<$Res>
    extends _$UserProfileResponseCopyWithImpl<$Res>
    implements _$UserProfileResponseCopyWith<$Res> {
  __$UserProfileResponseCopyWithImpl(
      _UserProfileResponse _value, $Res Function(_UserProfileResponse) _then)
      : super(_value, (v) => _then(v as _UserProfileResponse));

  @override
  _UserProfileResponse get _value => super._value as _UserProfileResponse;

  @override
  $Res call({
    Object? status = freezed,
    Object? payload = freezed,
  }) {
    return _then(_UserProfileResponse(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      payload: payload == freezed
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as UserProfileResponsePayload?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_UserProfileResponse implements _UserProfileResponse {
  const _$_UserProfileResponse(
      {@JsonKey(name: "status") required this.status, required this.payload});

  factory _$_UserProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$$_UserProfileResponseFromJson(json);

  @override
  @JsonKey(name: "status")
  final bool status;
  @override
  final UserProfileResponsePayload? payload;

  @override
  String toString() {
    return 'UserProfileResponse(status: $status, payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserProfileResponse &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.payload, payload));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(payload));

  @JsonKey(ignore: true)
  @override
  _$UserProfileResponseCopyWith<_UserProfileResponse> get copyWith =>
      __$UserProfileResponseCopyWithImpl<_UserProfileResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserProfileResponseToJson(this);
  }
}

abstract class _UserProfileResponse implements UserProfileResponse {
  const factory _UserProfileResponse(
          {@JsonKey(name: "status") required final bool status,
          required final UserProfileResponsePayload? payload}) =
      _$_UserProfileResponse;

  factory _UserProfileResponse.fromJson(Map<String, dynamic> json) =
      _$_UserProfileResponse.fromJson;

  @override
  @JsonKey(name: "status")
  bool get status => throw _privateConstructorUsedError;
  @override
  UserProfileResponsePayload? get payload => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserProfileResponseCopyWith<_UserProfileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
