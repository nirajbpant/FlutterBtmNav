// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'join_gym_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JoinGymResponse _$JoinGymResponseFromJson(Map<String, dynamic> json) {
  return _JoinGymResponse.fromJson(json);
}

/// @nodoc
mixin _$JoinGymResponse {
  bool get status => throw _privateConstructorUsedError;
  QuntoApiResponseErrors? get errors => throw _privateConstructorUsedError;
  List<QuntoApiResponseMessages>? get messages =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JoinGymResponseCopyWith<JoinGymResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoinGymResponseCopyWith<$Res> {
  factory $JoinGymResponseCopyWith(
          JoinGymResponse value, $Res Function(JoinGymResponse) then) =
      _$JoinGymResponseCopyWithImpl<$Res>;
  $Res call(
      {bool status,
      QuntoApiResponseErrors? errors,
      List<QuntoApiResponseMessages>? messages});

  $QuntoApiResponseErrorsCopyWith<$Res>? get errors;
}

/// @nodoc
class _$JoinGymResponseCopyWithImpl<$Res>
    implements $JoinGymResponseCopyWith<$Res> {
  _$JoinGymResponseCopyWithImpl(this._value, this._then);

  final JoinGymResponse _value;
  // ignore: unused_field
  final $Res Function(JoinGymResponse) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? errors = freezed,
    Object? messages = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      errors: errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as QuntoApiResponseErrors?,
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<QuntoApiResponseMessages>?,
    ));
  }

  @override
  $QuntoApiResponseErrorsCopyWith<$Res>? get errors {
    if (_value.errors == null) {
      return null;
    }

    return $QuntoApiResponseErrorsCopyWith<$Res>(_value.errors!, (value) {
      return _then(_value.copyWith(errors: value));
    });
  }
}

/// @nodoc
abstract class _$JoinGymResponseCopyWith<$Res>
    implements $JoinGymResponseCopyWith<$Res> {
  factory _$JoinGymResponseCopyWith(
          _JoinGymResponse value, $Res Function(_JoinGymResponse) then) =
      __$JoinGymResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool status,
      QuntoApiResponseErrors? errors,
      List<QuntoApiResponseMessages>? messages});

  @override
  $QuntoApiResponseErrorsCopyWith<$Res>? get errors;
}

/// @nodoc
class __$JoinGymResponseCopyWithImpl<$Res>
    extends _$JoinGymResponseCopyWithImpl<$Res>
    implements _$JoinGymResponseCopyWith<$Res> {
  __$JoinGymResponseCopyWithImpl(
      _JoinGymResponse _value, $Res Function(_JoinGymResponse) _then)
      : super(_value, (v) => _then(v as _JoinGymResponse));

  @override
  _JoinGymResponse get _value => super._value as _JoinGymResponse;

  @override
  $Res call({
    Object? status = freezed,
    Object? errors = freezed,
    Object? messages = freezed,
  }) {
    return _then(_JoinGymResponse(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      errors: errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as QuntoApiResponseErrors?,
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<QuntoApiResponseMessages>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_JoinGymResponse implements _JoinGymResponse {
  const _$_JoinGymResponse(
      {required this.status,
      required this.errors,
      required final List<QuntoApiResponseMessages>? messages})
      : _messages = messages;

  factory _$_JoinGymResponse.fromJson(Map<String, dynamic> json) =>
      _$$_JoinGymResponseFromJson(json);

  @override
  final bool status;
  @override
  final QuntoApiResponseErrors? errors;
  final List<QuntoApiResponseMessages>? _messages;
  @override
  List<QuntoApiResponseMessages>? get messages {
    final value = _messages;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'JoinGymResponse(status: $status, errors: $errors, messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _JoinGymResponse &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.errors, errors) &&
            const DeepCollectionEquality().equals(other.messages, messages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(errors),
      const DeepCollectionEquality().hash(messages));

  @JsonKey(ignore: true)
  @override
  _$JoinGymResponseCopyWith<_JoinGymResponse> get copyWith =>
      __$JoinGymResponseCopyWithImpl<_JoinGymResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JoinGymResponseToJson(this);
  }
}

abstract class _JoinGymResponse implements JoinGymResponse {
  const factory _JoinGymResponse(
          {required final bool status,
          required final QuntoApiResponseErrors? errors,
          required final List<QuntoApiResponseMessages>? messages}) =
      _$_JoinGymResponse;

  factory _JoinGymResponse.fromJson(Map<String, dynamic> json) =
      _$_JoinGymResponse.fromJson;

  @override
  bool get status => throw _privateConstructorUsedError;
  @override
  QuntoApiResponseErrors? get errors => throw _privateConstructorUsedError;
  @override
  List<QuntoApiResponseMessages>? get messages =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$JoinGymResponseCopyWith<_JoinGymResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
