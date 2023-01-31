// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'qunto_api_response_msg.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuntoApiResponseMessages _$QuntoApiResponseMessagesFromJson(
    Map<String, dynamic> json) {
  return _QuntoApiResponseMessages.fromJson(json);
}

/// @nodoc
mixin _$QuntoApiResponseMessages {
  @JsonKey(name: "shortMessage")
  String get shortMessage => throw _privateConstructorUsedError;
  @JsonKey(name: "longMessage")
  String get longMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuntoApiResponseMessagesCopyWith<QuntoApiResponseMessages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuntoApiResponseMessagesCopyWith<$Res> {
  factory $QuntoApiResponseMessagesCopyWith(QuntoApiResponseMessages value,
          $Res Function(QuntoApiResponseMessages) then) =
      _$QuntoApiResponseMessagesCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "shortMessage") String shortMessage,
      @JsonKey(name: "longMessage") String longMessage});
}

/// @nodoc
class _$QuntoApiResponseMessagesCopyWithImpl<$Res>
    implements $QuntoApiResponseMessagesCopyWith<$Res> {
  _$QuntoApiResponseMessagesCopyWithImpl(this._value, this._then);

  final QuntoApiResponseMessages _value;
  // ignore: unused_field
  final $Res Function(QuntoApiResponseMessages) _then;

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
abstract class _$QuntoApiResponseMessagesCopyWith<$Res>
    implements $QuntoApiResponseMessagesCopyWith<$Res> {
  factory _$QuntoApiResponseMessagesCopyWith(_QuntoApiResponseMessages value,
          $Res Function(_QuntoApiResponseMessages) then) =
      __$QuntoApiResponseMessagesCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "shortMessage") String shortMessage,
      @JsonKey(name: "longMessage") String longMessage});
}

/// @nodoc
class __$QuntoApiResponseMessagesCopyWithImpl<$Res>
    extends _$QuntoApiResponseMessagesCopyWithImpl<$Res>
    implements _$QuntoApiResponseMessagesCopyWith<$Res> {
  __$QuntoApiResponseMessagesCopyWithImpl(_QuntoApiResponseMessages _value,
      $Res Function(_QuntoApiResponseMessages) _then)
      : super(_value, (v) => _then(v as _QuntoApiResponseMessages));

  @override
  _QuntoApiResponseMessages get _value =>
      super._value as _QuntoApiResponseMessages;

  @override
  $Res call({
    Object? shortMessage = freezed,
    Object? longMessage = freezed,
  }) {
    return _then(_QuntoApiResponseMessages(
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
class _$_QuntoApiResponseMessages implements _QuntoApiResponseMessages {
  const _$_QuntoApiResponseMessages(
      {@JsonKey(name: "shortMessage") required this.shortMessage,
      @JsonKey(name: "longMessage") required this.longMessage});

  factory _$_QuntoApiResponseMessages.fromJson(Map<String, dynamic> json) =>
      _$$_QuntoApiResponseMessagesFromJson(json);

  @override
  @JsonKey(name: "shortMessage")
  final String shortMessage;
  @override
  @JsonKey(name: "longMessage")
  final String longMessage;

  @override
  String toString() {
    return 'QuntoApiResponseMessages(shortMessage: $shortMessage, longMessage: $longMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QuntoApiResponseMessages &&
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
  _$QuntoApiResponseMessagesCopyWith<_QuntoApiResponseMessages> get copyWith =>
      __$QuntoApiResponseMessagesCopyWithImpl<_QuntoApiResponseMessages>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuntoApiResponseMessagesToJson(this);
  }
}

abstract class _QuntoApiResponseMessages implements QuntoApiResponseMessages {
  const factory _QuntoApiResponseMessages(
          {@JsonKey(name: "shortMessage") required final String shortMessage,
          @JsonKey(name: "longMessage") required final String longMessage}) =
      _$_QuntoApiResponseMessages;

  factory _QuntoApiResponseMessages.fromJson(Map<String, dynamic> json) =
      _$_QuntoApiResponseMessages.fromJson;

  @override
  @JsonKey(name: "shortMessage")
  String get shortMessage => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "longMessage")
  String get longMessage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$QuntoApiResponseMessagesCopyWith<_QuntoApiResponseMessages> get copyWith =>
      throw _privateConstructorUsedError;
}
