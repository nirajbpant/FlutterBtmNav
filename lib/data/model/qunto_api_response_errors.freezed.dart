// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'qunto_api_response_errors.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuntoApiResponseErrors _$QuntoApiResponseErrorsFromJson(
    Map<String, dynamic> json) {
  return _QuntoApiResponseErrors.fromJson(json);
}

/// @nodoc
mixin _$QuntoApiResponseErrors {
  @JsonKey(name: "shortMessage")
  String get shortMessage => throw _privateConstructorUsedError;
  @JsonKey(name: "longMessage")
  String get longMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuntoApiResponseErrorsCopyWith<QuntoApiResponseErrors> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuntoApiResponseErrorsCopyWith<$Res> {
  factory $QuntoApiResponseErrorsCopyWith(QuntoApiResponseErrors value,
          $Res Function(QuntoApiResponseErrors) then) =
      _$QuntoApiResponseErrorsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "shortMessage") String shortMessage,
      @JsonKey(name: "longMessage") String longMessage});
}

/// @nodoc
class _$QuntoApiResponseErrorsCopyWithImpl<$Res>
    implements $QuntoApiResponseErrorsCopyWith<$Res> {
  _$QuntoApiResponseErrorsCopyWithImpl(this._value, this._then);

  final QuntoApiResponseErrors _value;
  // ignore: unused_field
  final $Res Function(QuntoApiResponseErrors) _then;

  @override
  $Res call({
    Object? shortMessage = freezed,
    Object? longMessage = freezed,
  }) {
    return _then(_value.copyWith(
      shortMessage: shortMessage == freezed
          ? _value.shortMessage
          : shortMessage // ignore: cast_nullable_to_non_nullable
              as String,
      longMessage: longMessage == freezed
          ? _value.longMessage
          : longMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$QuntoApiResponseErrorsCopyWith<$Res>
    implements $QuntoApiResponseErrorsCopyWith<$Res> {
  factory _$QuntoApiResponseErrorsCopyWith(_QuntoApiResponseErrors value,
          $Res Function(_QuntoApiResponseErrors) then) =
      __$QuntoApiResponseErrorsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "shortMessage") String shortMessage,
      @JsonKey(name: "longMessage") String longMessage});
}

/// @nodoc
class __$QuntoApiResponseErrorsCopyWithImpl<$Res>
    extends _$QuntoApiResponseErrorsCopyWithImpl<$Res>
    implements _$QuntoApiResponseErrorsCopyWith<$Res> {
  __$QuntoApiResponseErrorsCopyWithImpl(_QuntoApiResponseErrors _value,
      $Res Function(_QuntoApiResponseErrors) _then)
      : super(_value, (v) => _then(v as _QuntoApiResponseErrors));

  @override
  _QuntoApiResponseErrors get _value => super._value as _QuntoApiResponseErrors;

  @override
  $Res call({
    Object? shortMessage = freezed,
    Object? longMessage = freezed,
  }) {
    return _then(_QuntoApiResponseErrors(
      shortMessage: shortMessage == freezed
          ? _value.shortMessage
          : shortMessage // ignore: cast_nullable_to_non_nullable
              as String,
      longMessage: longMessage == freezed
          ? _value.longMessage
          : longMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuntoApiResponseErrors implements _QuntoApiResponseErrors {
  const _$_QuntoApiResponseErrors(
      {@JsonKey(name: "shortMessage") required this.shortMessage,
      @JsonKey(name: "longMessage") required this.longMessage});

  factory _$_QuntoApiResponseErrors.fromJson(Map<String, dynamic> json) =>
      _$$_QuntoApiResponseErrorsFromJson(json);

  @override
  @JsonKey(name: "shortMessage")
  final String shortMessage;
  @override
  @JsonKey(name: "longMessage")
  final String longMessage;

  @override
  String toString() {
    return 'QuntoApiResponseErrors(shortMessage: $shortMessage, longMessage: $longMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QuntoApiResponseErrors &&
            const DeepCollectionEquality()
                .equals(other.shortMessage, shortMessage) &&
            const DeepCollectionEquality()
                .equals(other.longMessage, longMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(shortMessage),
      const DeepCollectionEquality().hash(longMessage));

  @JsonKey(ignore: true)
  @override
  _$QuntoApiResponseErrorsCopyWith<_QuntoApiResponseErrors> get copyWith =>
      __$QuntoApiResponseErrorsCopyWithImpl<_QuntoApiResponseErrors>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuntoApiResponseErrorsToJson(this);
  }
}

abstract class _QuntoApiResponseErrors implements QuntoApiResponseErrors {
  const factory _QuntoApiResponseErrors(
          {@JsonKey(name: "shortMessage") required final String shortMessage,
          @JsonKey(name: "longMessage") required final String longMessage}) =
      _$_QuntoApiResponseErrors;

  factory _QuntoApiResponseErrors.fromJson(Map<String, dynamic> json) =
      _$_QuntoApiResponseErrors.fromJson;

  @override
  @JsonKey(name: "shortMessage")
  String get shortMessage => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "longMessage")
  String get longMessage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$QuntoApiResponseErrorsCopyWith<_QuntoApiResponseErrors> get copyWith =>
      throw _privateConstructorUsedError;
}
