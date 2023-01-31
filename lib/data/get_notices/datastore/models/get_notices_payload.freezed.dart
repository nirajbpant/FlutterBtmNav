// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_notices_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetNoticesResponsePayload _$GetNoticesResponsePayloadFromJson(
    Map<String, dynamic> json) {
  return _GetNoticesResponsePayload.fromJson(json);
}

/// @nodoc
mixin _$GetNoticesResponsePayload {
  List<GymNotice> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetNoticesResponsePayloadCopyWith<GetNoticesResponsePayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetNoticesResponsePayloadCopyWith<$Res> {
  factory $GetNoticesResponsePayloadCopyWith(GetNoticesResponsePayload value,
          $Res Function(GetNoticesResponsePayload) then) =
      _$GetNoticesResponsePayloadCopyWithImpl<$Res>;
  $Res call({List<GymNotice> data});
}

/// @nodoc
class _$GetNoticesResponsePayloadCopyWithImpl<$Res>
    implements $GetNoticesResponsePayloadCopyWith<$Res> {
  _$GetNoticesResponsePayloadCopyWithImpl(this._value, this._then);

  final GetNoticesResponsePayload _value;
  // ignore: unused_field
  final $Res Function(GetNoticesResponsePayload) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<GymNotice>,
    ));
  }
}

/// @nodoc
abstract class _$GetNoticesResponsePayloadCopyWith<$Res>
    implements $GetNoticesResponsePayloadCopyWith<$Res> {
  factory _$GetNoticesResponsePayloadCopyWith(_GetNoticesResponsePayload value,
          $Res Function(_GetNoticesResponsePayload) then) =
      __$GetNoticesResponsePayloadCopyWithImpl<$Res>;
  @override
  $Res call({List<GymNotice> data});
}

/// @nodoc
class __$GetNoticesResponsePayloadCopyWithImpl<$Res>
    extends _$GetNoticesResponsePayloadCopyWithImpl<$Res>
    implements _$GetNoticesResponsePayloadCopyWith<$Res> {
  __$GetNoticesResponsePayloadCopyWithImpl(_GetNoticesResponsePayload _value,
      $Res Function(_GetNoticesResponsePayload) _then)
      : super(_value, (v) => _then(v as _GetNoticesResponsePayload));

  @override
  _GetNoticesResponsePayload get _value =>
      super._value as _GetNoticesResponsePayload;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_GetNoticesResponsePayload(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<GymNotice>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_GetNoticesResponsePayload implements _GetNoticesResponsePayload {
  const _$_GetNoticesResponsePayload({required final List<GymNotice> data})
      : _data = data;

  factory _$_GetNoticesResponsePayload.fromJson(Map<String, dynamic> json) =>
      _$$_GetNoticesResponsePayloadFromJson(json);

  final List<GymNotice> _data;
  @override
  List<GymNotice> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'GetNoticesResponsePayload(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetNoticesResponsePayload &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$GetNoticesResponsePayloadCopyWith<_GetNoticesResponsePayload>
      get copyWith =>
          __$GetNoticesResponsePayloadCopyWithImpl<_GetNoticesResponsePayload>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetNoticesResponsePayloadToJson(this);
  }
}

abstract class _GetNoticesResponsePayload implements GetNoticesResponsePayload {
  const factory _GetNoticesResponsePayload(
      {required final List<GymNotice> data}) = _$_GetNoticesResponsePayload;

  factory _GetNoticesResponsePayload.fromJson(Map<String, dynamic> json) =
      _$_GetNoticesResponsePayload.fromJson;

  @override
  List<GymNotice> get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetNoticesResponsePayloadCopyWith<_GetNoticesResponsePayload>
      get copyWith => throw _privateConstructorUsedError;
}
