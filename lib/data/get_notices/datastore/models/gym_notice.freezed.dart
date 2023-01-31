// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'gym_notice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GymNotice _$GymNoticeFromJson(Map<String, dynamic> json) {
  return _GymNotice.fromJson(json);
}

/// @nodoc
mixin _$GymNotice {
  NoticeId get id => throw _privateConstructorUsedError;
  @JsonKey(name: "gymId")
  String get gymId => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "noticeTitle")
  String get noticeTitle => throw _privateConstructorUsedError;
  @JsonKey(name: "noticeBody")
  String get noticeBody => throw _privateConstructorUsedError;
  @JsonKey(name: "noticeType")
  String get noticeType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GymNoticeCopyWith<GymNotice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GymNoticeCopyWith<$Res> {
  factory $GymNoticeCopyWith(GymNotice value, $Res Function(GymNotice) then) =
      _$GymNoticeCopyWithImpl<$Res>;
  $Res call(
      {NoticeId id,
      @JsonKey(name: "gymId") String gymId,
      @JsonKey(name: "createdAt") String createdAt,
      @JsonKey(name: "noticeTitle") String noticeTitle,
      @JsonKey(name: "noticeBody") String noticeBody,
      @JsonKey(name: "noticeType") String noticeType});

  $NoticeIdCopyWith<$Res> get id;
}

/// @nodoc
class _$GymNoticeCopyWithImpl<$Res> implements $GymNoticeCopyWith<$Res> {
  _$GymNoticeCopyWithImpl(this._value, this._then);

  final GymNotice _value;
  // ignore: unused_field
  final $Res Function(GymNotice) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? gymId = freezed,
    Object? createdAt = freezed,
    Object? noticeTitle = freezed,
    Object? noticeBody = freezed,
    Object? noticeType = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as NoticeId,
      gymId: gymId == freezed
          ? _value.gymId
          : gymId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      noticeTitle: noticeTitle == freezed
          ? _value.noticeTitle
          : noticeTitle // ignore: cast_nullable_to_non_nullable
              as String,
      noticeBody: noticeBody == freezed
          ? _value.noticeBody
          : noticeBody // ignore: cast_nullable_to_non_nullable
              as String,
      noticeType: noticeType == freezed
          ? _value.noticeType
          : noticeType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $NoticeIdCopyWith<$Res> get id {
    return $NoticeIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value));
    });
  }
}

/// @nodoc
abstract class _$GymNoticeCopyWith<$Res> implements $GymNoticeCopyWith<$Res> {
  factory _$GymNoticeCopyWith(
          _GymNotice value, $Res Function(_GymNotice) then) =
      __$GymNoticeCopyWithImpl<$Res>;
  @override
  $Res call(
      {NoticeId id,
      @JsonKey(name: "gymId") String gymId,
      @JsonKey(name: "createdAt") String createdAt,
      @JsonKey(name: "noticeTitle") String noticeTitle,
      @JsonKey(name: "noticeBody") String noticeBody,
      @JsonKey(name: "noticeType") String noticeType});

  @override
  $NoticeIdCopyWith<$Res> get id;
}

/// @nodoc
class __$GymNoticeCopyWithImpl<$Res> extends _$GymNoticeCopyWithImpl<$Res>
    implements _$GymNoticeCopyWith<$Res> {
  __$GymNoticeCopyWithImpl(_GymNotice _value, $Res Function(_GymNotice) _then)
      : super(_value, (v) => _then(v as _GymNotice));

  @override
  _GymNotice get _value => super._value as _GymNotice;

  @override
  $Res call({
    Object? id = freezed,
    Object? gymId = freezed,
    Object? createdAt = freezed,
    Object? noticeTitle = freezed,
    Object? noticeBody = freezed,
    Object? noticeType = freezed,
  }) {
    return _then(_GymNotice(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as NoticeId,
      gymId: gymId == freezed
          ? _value.gymId
          : gymId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      noticeTitle: noticeTitle == freezed
          ? _value.noticeTitle
          : noticeTitle // ignore: cast_nullable_to_non_nullable
              as String,
      noticeBody: noticeBody == freezed
          ? _value.noticeBody
          : noticeBody // ignore: cast_nullable_to_non_nullable
              as String,
      noticeType: noticeType == freezed
          ? _value.noticeType
          : noticeType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_GymNotice implements _GymNotice {
  const _$_GymNotice(
      {required this.id,
      @JsonKey(name: "gymId") required this.gymId,
      @JsonKey(name: "createdAt") required this.createdAt,
      @JsonKey(name: "noticeTitle") required this.noticeTitle,
      @JsonKey(name: "noticeBody") required this.noticeBody,
      @JsonKey(name: "noticeType") required this.noticeType});

  factory _$_GymNotice.fromJson(Map<String, dynamic> json) =>
      _$$_GymNoticeFromJson(json);

  @override
  final NoticeId id;
  @override
  @JsonKey(name: "gymId")
  final String gymId;
  @override
  @JsonKey(name: "createdAt")
  final String createdAt;
  @override
  @JsonKey(name: "noticeTitle")
  final String noticeTitle;
  @override
  @JsonKey(name: "noticeBody")
  final String noticeBody;
  @override
  @JsonKey(name: "noticeType")
  final String noticeType;

  @override
  String toString() {
    return 'GymNotice(id: $id, gymId: $gymId, createdAt: $createdAt, noticeTitle: $noticeTitle, noticeBody: $noticeBody, noticeType: $noticeType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GymNotice &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.gymId, gymId) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality()
                .equals(other.noticeTitle, noticeTitle) &&
            const DeepCollectionEquality()
                .equals(other.noticeBody, noticeBody) &&
            const DeepCollectionEquality()
                .equals(other.noticeType, noticeType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(gymId),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(noticeTitle),
      const DeepCollectionEquality().hash(noticeBody),
      const DeepCollectionEquality().hash(noticeType));

  @JsonKey(ignore: true)
  @override
  _$GymNoticeCopyWith<_GymNotice> get copyWith =>
      __$GymNoticeCopyWithImpl<_GymNotice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GymNoticeToJson(this);
  }
}

abstract class _GymNotice implements GymNotice {
  const factory _GymNotice(
          {required final NoticeId id,
          @JsonKey(name: "gymId") required final String gymId,
          @JsonKey(name: "createdAt") required final String createdAt,
          @JsonKey(name: "noticeTitle") required final String noticeTitle,
          @JsonKey(name: "noticeBody") required final String noticeBody,
          @JsonKey(name: "noticeType") required final String noticeType}) =
      _$_GymNotice;

  factory _GymNotice.fromJson(Map<String, dynamic> json) =
      _$_GymNotice.fromJson;

  @override
  NoticeId get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "gymId")
  String get gymId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "createdAt")
  String get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "noticeTitle")
  String get noticeTitle => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "noticeBody")
  String get noticeBody => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "noticeType")
  String get noticeType => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GymNoticeCopyWith<_GymNotice> get copyWith =>
      throw _privateConstructorUsedError;
}
