// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notice_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NoticeId _$NoticeIdFromJson(Map<String, dynamic> json) {
  return _NoticeId.fromJson(json);
}

/// @nodoc
mixin _$NoticeId {
  int get timestamp => throw _privateConstructorUsedError;
  String get datnoe => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoticeIdCopyWith<NoticeId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoticeIdCopyWith<$Res> {
  factory $NoticeIdCopyWith(NoticeId value, $Res Function(NoticeId) then) =
      _$NoticeIdCopyWithImpl<$Res>;
  $Res call({int timestamp, String datnoe});
}

/// @nodoc
class _$NoticeIdCopyWithImpl<$Res> implements $NoticeIdCopyWith<$Res> {
  _$NoticeIdCopyWithImpl(this._value, this._then);

  final NoticeId _value;
  // ignore: unused_field
  final $Res Function(NoticeId) _then;

  @override
  $Res call({
    Object? timestamp = freezed,
    Object? datnoe = freezed,
  }) {
    return _then(_value.copyWith(
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      datnoe: datnoe == freezed
          ? _value.datnoe
          : datnoe // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$NoticeIdCopyWith<$Res> implements $NoticeIdCopyWith<$Res> {
  factory _$NoticeIdCopyWith(_NoticeId value, $Res Function(_NoticeId) then) =
      __$NoticeIdCopyWithImpl<$Res>;
  @override
  $Res call({int timestamp, String datnoe});
}

/// @nodoc
class __$NoticeIdCopyWithImpl<$Res> extends _$NoticeIdCopyWithImpl<$Res>
    implements _$NoticeIdCopyWith<$Res> {
  __$NoticeIdCopyWithImpl(_NoticeId _value, $Res Function(_NoticeId) _then)
      : super(_value, (v) => _then(v as _NoticeId));

  @override
  _NoticeId get _value => super._value as _NoticeId;

  @override
  $Res call({
    Object? timestamp = freezed,
    Object? datnoe = freezed,
  }) {
    return _then(_NoticeId(
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      datnoe: datnoe == freezed
          ? _value.datnoe
          : datnoe // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NoticeId implements _NoticeId {
  const _$_NoticeId({required this.timestamp, required this.datnoe});

  factory _$_NoticeId.fromJson(Map<String, dynamic> json) =>
      _$$_NoticeIdFromJson(json);

  @override
  final int timestamp;
  @override
  final String datnoe;

  @override
  String toString() {
    return 'NoticeId(timestamp: $timestamp, datnoe: $datnoe)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NoticeId &&
            const DeepCollectionEquality().equals(other.timestamp, timestamp) &&
            const DeepCollectionEquality().equals(other.datnoe, datnoe));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(timestamp),
      const DeepCollectionEquality().hash(datnoe));

  @JsonKey(ignore: true)
  @override
  _$NoticeIdCopyWith<_NoticeId> get copyWith =>
      __$NoticeIdCopyWithImpl<_NoticeId>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NoticeIdToJson(this);
  }
}

abstract class _NoticeId implements NoticeId {
  const factory _NoticeId(
      {required final int timestamp,
      required final String datnoe}) = _$_NoticeId;

  factory _NoticeId.fromJson(Map<String, dynamic> json) = _$_NoticeId.fromJson;

  @override
  int get timestamp => throw _privateConstructorUsedError;
  @override
  String get datnoe => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NoticeIdCopyWith<_NoticeId> get copyWith =>
      throw _privateConstructorUsedError;
}
