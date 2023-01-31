// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'access_token_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccessTokenResponse _$AccessTokenResponseFromJson(Map<String, dynamic> json) {
  return _AccessTokenResponse.fromJson(json);
}

/// @nodoc
mixin _$AccessTokenResponse {
  @JsonKey(name: "access_token")
  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: "refresh_token")
  String get refreshtoken => throw _privateConstructorUsedError;
  @JsonKey(name: "expires_in")
  int get expiresIn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccessTokenResponseCopyWith<AccessTokenResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccessTokenResponseCopyWith<$Res> {
  factory $AccessTokenResponseCopyWith(
          AccessTokenResponse value, $Res Function(AccessTokenResponse) then) =
      _$AccessTokenResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "access_token") String accessToken,
      @JsonKey(name: "refresh_token") String refreshtoken,
      @JsonKey(name: "expires_in") int expiresIn});
}

/// @nodoc
class _$AccessTokenResponseCopyWithImpl<$Res>
    implements $AccessTokenResponseCopyWith<$Res> {
  _$AccessTokenResponseCopyWithImpl(this._value, this._then);

  final AccessTokenResponse _value;
  // ignore: unused_field
  final $Res Function(AccessTokenResponse) _then;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? refreshtoken = freezed,
    Object? expiresIn = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshtoken: refreshtoken == freezed
          ? _value.refreshtoken
          : refreshtoken // ignore: cast_nullable_to_non_nullable
              as String,
      expiresIn: expiresIn == freezed
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$AccessTokenResponseCopyWith<$Res>
    implements $AccessTokenResponseCopyWith<$Res> {
  factory _$AccessTokenResponseCopyWith(_AccessTokenResponse value,
          $Res Function(_AccessTokenResponse) then) =
      __$AccessTokenResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "access_token") String accessToken,
      @JsonKey(name: "refresh_token") String refreshtoken,
      @JsonKey(name: "expires_in") int expiresIn});
}

/// @nodoc
class __$AccessTokenResponseCopyWithImpl<$Res>
    extends _$AccessTokenResponseCopyWithImpl<$Res>
    implements _$AccessTokenResponseCopyWith<$Res> {
  __$AccessTokenResponseCopyWithImpl(
      _AccessTokenResponse _value, $Res Function(_AccessTokenResponse) _then)
      : super(_value, (v) => _then(v as _AccessTokenResponse));

  @override
  _AccessTokenResponse get _value => super._value as _AccessTokenResponse;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? refreshtoken = freezed,
    Object? expiresIn = freezed,
  }) {
    return _then(_AccessTokenResponse(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshtoken: refreshtoken == freezed
          ? _value.refreshtoken
          : refreshtoken // ignore: cast_nullable_to_non_nullable
              as String,
      expiresIn: expiresIn == freezed
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AccessTokenResponse implements _AccessTokenResponse {
  const _$_AccessTokenResponse(
      {@JsonKey(name: "access_token") required this.accessToken,
      @JsonKey(name: "refresh_token") required this.refreshtoken,
      @JsonKey(name: "expires_in") required this.expiresIn});

  factory _$_AccessTokenResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AccessTokenResponseFromJson(json);

  @override
  @JsonKey(name: "access_token")
  final String accessToken;
  @override
  @JsonKey(name: "refresh_token")
  final String refreshtoken;
  @override
  @JsonKey(name: "expires_in")
  final int expiresIn;

  @override
  String toString() {
    return 'AccessTokenResponse(accessToken: $accessToken, refreshtoken: $refreshtoken, expiresIn: $expiresIn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AccessTokenResponse &&
            const DeepCollectionEquality()
                .equals(other.accessToken, accessToken) &&
            const DeepCollectionEquality()
                .equals(other.refreshtoken, refreshtoken) &&
            const DeepCollectionEquality().equals(other.expiresIn, expiresIn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(accessToken),
      const DeepCollectionEquality().hash(refreshtoken),
      const DeepCollectionEquality().hash(expiresIn));

  @JsonKey(ignore: true)
  @override
  _$AccessTokenResponseCopyWith<_AccessTokenResponse> get copyWith =>
      __$AccessTokenResponseCopyWithImpl<_AccessTokenResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccessTokenResponseToJson(this);
  }
}

abstract class _AccessTokenResponse implements AccessTokenResponse {
  const factory _AccessTokenResponse(
          {@JsonKey(name: "access_token") required final String accessToken,
          @JsonKey(name: "refresh_token") required final String refreshtoken,
          @JsonKey(name: "expires_in") required final int expiresIn}) =
      _$_AccessTokenResponse;

  factory _AccessTokenResponse.fromJson(Map<String, dynamic> json) =
      _$_AccessTokenResponse.fromJson;

  @override
  @JsonKey(name: "access_token")
  String get accessToken => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "refresh_token")
  String get refreshtoken => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "expires_in")
  int get expiresIn => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AccessTokenResponseCopyWith<_AccessTokenResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
