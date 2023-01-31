// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_response_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginResponseData _$LoginResponseDataFromJson(Map<String, dynamic> json) {
  return _LoginResponseData.fromJson(json);
}

/// @nodoc
mixin _$LoginResponseData {
  @JsonKey(name: "access_token")
  String get acccessToken => throw _privateConstructorUsedError;
  @JsonKey(name: "refresh_token")
  String get refreshToken => throw _privateConstructorUsedError;
  @JsonKey(name: "expires_in")
  int get expiresIn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginResponseDataCopyWith<LoginResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResponseDataCopyWith<$Res> {
  factory $LoginResponseDataCopyWith(
          LoginResponseData value, $Res Function(LoginResponseData) then) =
      _$LoginResponseDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "access_token") String acccessToken,
      @JsonKey(name: "refresh_token") String refreshToken,
      @JsonKey(name: "expires_in") int expiresIn});
}

/// @nodoc
class _$LoginResponseDataCopyWithImpl<$Res>
    implements $LoginResponseDataCopyWith<$Res> {
  _$LoginResponseDataCopyWithImpl(this._value, this._then);

  final LoginResponseData _value;
  // ignore: unused_field
  final $Res Function(LoginResponseData) _then;

  @override
  $Res call({
    Object? acccessToken = freezed,
    Object? refreshToken = freezed,
    Object? expiresIn = freezed,
  }) {
    return _then(_value.copyWith(
      acccessToken: acccessToken == freezed
          ? _value.acccessToken
          : acccessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      expiresIn: expiresIn == freezed
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$LoginResponseDataCopyWith<$Res>
    implements $LoginResponseDataCopyWith<$Res> {
  factory _$LoginResponseDataCopyWith(
          _LoginResponseData value, $Res Function(_LoginResponseData) then) =
      __$LoginResponseDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "access_token") String acccessToken,
      @JsonKey(name: "refresh_token") String refreshToken,
      @JsonKey(name: "expires_in") int expiresIn});
}

/// @nodoc
class __$LoginResponseDataCopyWithImpl<$Res>
    extends _$LoginResponseDataCopyWithImpl<$Res>
    implements _$LoginResponseDataCopyWith<$Res> {
  __$LoginResponseDataCopyWithImpl(
      _LoginResponseData _value, $Res Function(_LoginResponseData) _then)
      : super(_value, (v) => _then(v as _LoginResponseData));

  @override
  _LoginResponseData get _value => super._value as _LoginResponseData;

  @override
  $Res call({
    Object? acccessToken = freezed,
    Object? refreshToken = freezed,
    Object? expiresIn = freezed,
  }) {
    return _then(_LoginResponseData(
      acccessToken: acccessToken == freezed
          ? _value.acccessToken
          : acccessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
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
class _$_LoginResponseData implements _LoginResponseData {
  const _$_LoginResponseData(
      {@JsonKey(name: "access_token") required this.acccessToken,
      @JsonKey(name: "refresh_token") required this.refreshToken,
      @JsonKey(name: "expires_in") required this.expiresIn});

  factory _$_LoginResponseData.fromJson(Map<String, dynamic> json) =>
      _$$_LoginResponseDataFromJson(json);

  @override
  @JsonKey(name: "access_token")
  final String acccessToken;
  @override
  @JsonKey(name: "refresh_token")
  final String refreshToken;
  @override
  @JsonKey(name: "expires_in")
  final int expiresIn;

  @override
  String toString() {
    return 'LoginResponseData(acccessToken: $acccessToken, refreshToken: $refreshToken, expiresIn: $expiresIn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginResponseData &&
            const DeepCollectionEquality()
                .equals(other.acccessToken, acccessToken) &&
            const DeepCollectionEquality()
                .equals(other.refreshToken, refreshToken) &&
            const DeepCollectionEquality().equals(other.expiresIn, expiresIn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(acccessToken),
      const DeepCollectionEquality().hash(refreshToken),
      const DeepCollectionEquality().hash(expiresIn));

  @JsonKey(ignore: true)
  @override
  _$LoginResponseDataCopyWith<_LoginResponseData> get copyWith =>
      __$LoginResponseDataCopyWithImpl<_LoginResponseData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginResponseDataToJson(this);
  }
}

abstract class _LoginResponseData implements LoginResponseData {
  const factory _LoginResponseData(
          {@JsonKey(name: "access_token") required final String acccessToken,
          @JsonKey(name: "refresh_token") required final String refreshToken,
          @JsonKey(name: "expires_in") required final int expiresIn}) =
      _$_LoginResponseData;

  factory _LoginResponseData.fromJson(Map<String, dynamic> json) =
      _$_LoginResponseData.fromJson;

  @override
  @JsonKey(name: "access_token")
  String get acccessToken => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "refresh_token")
  String get refreshToken => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "expires_in")
  int get expiresIn => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoginResponseDataCopyWith<_LoginResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}
