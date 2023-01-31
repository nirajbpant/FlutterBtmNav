// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_gym_details_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetGymDetailsPayload _$GetGymDetailsPayloadFromJson(Map<String, dynamic> json) {
  return _GetGymDetailsPayload.fromJson(json);
}

/// @nodoc
mixin _$GetGymDetailsPayload {
  GymDetails get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetGymDetailsPayloadCopyWith<GetGymDetailsPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetGymDetailsPayloadCopyWith<$Res> {
  factory $GetGymDetailsPayloadCopyWith(GetGymDetailsPayload value,
          $Res Function(GetGymDetailsPayload) then) =
      _$GetGymDetailsPayloadCopyWithImpl<$Res>;
  $Res call({GymDetails data});

  $GymDetailsCopyWith<$Res> get data;
}

/// @nodoc
class _$GetGymDetailsPayloadCopyWithImpl<$Res>
    implements $GetGymDetailsPayloadCopyWith<$Res> {
  _$GetGymDetailsPayloadCopyWithImpl(this._value, this._then);

  final GetGymDetailsPayload _value;
  // ignore: unused_field
  final $Res Function(GetGymDetailsPayload) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as GymDetails,
    ));
  }

  @override
  $GymDetailsCopyWith<$Res> get data {
    return $GymDetailsCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$GetGymDetailsPayloadCopyWith<$Res>
    implements $GetGymDetailsPayloadCopyWith<$Res> {
  factory _$GetGymDetailsPayloadCopyWith(_GetGymDetailsPayload value,
          $Res Function(_GetGymDetailsPayload) then) =
      __$GetGymDetailsPayloadCopyWithImpl<$Res>;
  @override
  $Res call({GymDetails data});

  @override
  $GymDetailsCopyWith<$Res> get data;
}

/// @nodoc
class __$GetGymDetailsPayloadCopyWithImpl<$Res>
    extends _$GetGymDetailsPayloadCopyWithImpl<$Res>
    implements _$GetGymDetailsPayloadCopyWith<$Res> {
  __$GetGymDetailsPayloadCopyWithImpl(
      _GetGymDetailsPayload _value, $Res Function(_GetGymDetailsPayload) _then)
      : super(_value, (v) => _then(v as _GetGymDetailsPayload));

  @override
  _GetGymDetailsPayload get _value => super._value as _GetGymDetailsPayload;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_GetGymDetailsPayload(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as GymDetails,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_GetGymDetailsPayload implements _GetGymDetailsPayload {
  const _$_GetGymDetailsPayload({required this.data});

  factory _$_GetGymDetailsPayload.fromJson(Map<String, dynamic> json) =>
      _$$_GetGymDetailsPayloadFromJson(json);

  @override
  final GymDetails data;

  @override
  String toString() {
    return 'GetGymDetailsPayload(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetGymDetailsPayload &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$GetGymDetailsPayloadCopyWith<_GetGymDetailsPayload> get copyWith =>
      __$GetGymDetailsPayloadCopyWithImpl<_GetGymDetailsPayload>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetGymDetailsPayloadToJson(this);
  }
}

abstract class _GetGymDetailsPayload implements GetGymDetailsPayload {
  const factory _GetGymDetailsPayload({required final GymDetails data}) =
      _$_GetGymDetailsPayload;

  factory _GetGymDetailsPayload.fromJson(Map<String, dynamic> json) =
      _$_GetGymDetailsPayload.fromJson;

  @override
  GymDetails get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetGymDetailsPayloadCopyWith<_GetGymDetailsPayload> get copyWith =>
      throw _privateConstructorUsedError;
}
