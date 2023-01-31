// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_profile_response_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserProfileResponsePayload _$UserProfileResponsePayloadFromJson(
    Map<String, dynamic> json) {
  return _UserProfileResponsePayload.fromJson(json);
}

/// @nodoc
mixin _$UserProfileResponsePayload {
  @JsonKey(name: "details")
  UserDetails? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProfileResponsePayloadCopyWith<UserProfileResponsePayload>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileResponsePayloadCopyWith<$Res> {
  factory $UserProfileResponsePayloadCopyWith(UserProfileResponsePayload value,
          $Res Function(UserProfileResponsePayload) then) =
      _$UserProfileResponsePayloadCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "details") UserDetails? data});

  $UserDetailsCopyWith<$Res>? get data;
}

/// @nodoc
class _$UserProfileResponsePayloadCopyWithImpl<$Res>
    implements $UserProfileResponsePayloadCopyWith<$Res> {
  _$UserProfileResponsePayloadCopyWithImpl(this._value, this._then);

  final UserProfileResponsePayload _value;
  // ignore: unused_field
  final $Res Function(UserProfileResponsePayload) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserDetails?,
    ));
  }

  @override
  $UserDetailsCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $UserDetailsCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$UserProfileResponsePayloadCopyWith<$Res>
    implements $UserProfileResponsePayloadCopyWith<$Res> {
  factory _$UserProfileResponsePayloadCopyWith(
          _UserProfileResponsePayload value,
          $Res Function(_UserProfileResponsePayload) then) =
      __$UserProfileResponsePayloadCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "details") UserDetails? data});

  @override
  $UserDetailsCopyWith<$Res>? get data;
}

/// @nodoc
class __$UserProfileResponsePayloadCopyWithImpl<$Res>
    extends _$UserProfileResponsePayloadCopyWithImpl<$Res>
    implements _$UserProfileResponsePayloadCopyWith<$Res> {
  __$UserProfileResponsePayloadCopyWithImpl(_UserProfileResponsePayload _value,
      $Res Function(_UserProfileResponsePayload) _then)
      : super(_value, (v) => _then(v as _UserProfileResponsePayload));

  @override
  _UserProfileResponsePayload get _value =>
      super._value as _UserProfileResponsePayload;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_UserProfileResponsePayload(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserDetails?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_UserProfileResponsePayload implements _UserProfileResponsePayload {
  const _$_UserProfileResponsePayload(
      {@JsonKey(name: "details") required this.data});

  factory _$_UserProfileResponsePayload.fromJson(Map<String, dynamic> json) =>
      _$$_UserProfileResponsePayloadFromJson(json);

  @override
  @JsonKey(name: "details")
  final UserDetails? data;

  @override
  String toString() {
    return 'UserProfileResponsePayload(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserProfileResponsePayload &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$UserProfileResponsePayloadCopyWith<_UserProfileResponsePayload>
      get copyWith => __$UserProfileResponsePayloadCopyWithImpl<
          _UserProfileResponsePayload>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserProfileResponsePayloadToJson(this);
  }
}

abstract class _UserProfileResponsePayload
    implements UserProfileResponsePayload {
  const factory _UserProfileResponsePayload(
          {@JsonKey(name: "details") required final UserDetails? data}) =
      _$_UserProfileResponsePayload;

  factory _UserProfileResponsePayload.fromJson(Map<String, dynamic> json) =
      _$_UserProfileResponsePayload.fromJson;

  @override
  @JsonKey(name: "details")
  UserDetails? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserProfileResponsePayloadCopyWith<_UserProfileResponsePayload>
      get copyWith => throw _privateConstructorUsedError;
}
