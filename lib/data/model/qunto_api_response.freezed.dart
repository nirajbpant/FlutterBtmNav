// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'qunto_api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuntoApiResponse _$QuntoApiResponseFromJson(Map<String, dynamic> json) {
  return _QuntoApiResponse.fromJson(json);
}

/// @nodoc
mixin _$QuntoApiResponse {
  @JsonKey(name: "status")
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: "messages")
  List<QuntoApiResponseMessages>? get messages =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "errors")
  List<QuntoApiResponseErrors>? get errors =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuntoApiResponseCopyWith<QuntoApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuntoApiResponseCopyWith<$Res> {
  factory $QuntoApiResponseCopyWith(
          QuntoApiResponse value, $Res Function(QuntoApiResponse) then) =
      _$QuntoApiResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "status") bool status,
      @JsonKey(name: "messages") List<QuntoApiResponseMessages>? messages,
      @JsonKey(name: "errors") List<QuntoApiResponseErrors>? errors});
}

/// @nodoc
class _$QuntoApiResponseCopyWithImpl<$Res>
    implements $QuntoApiResponseCopyWith<$Res> {
  _$QuntoApiResponseCopyWithImpl(this._value, this._then);

  final QuntoApiResponse _value;
  // ignore: unused_field
  final $Res Function(QuntoApiResponse) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? messages = freezed,
    Object? errors = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<QuntoApiResponseMessages>?,
      errors: errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<QuntoApiResponseErrors>?,
    ));
  }
}

/// @nodoc
abstract class _$QuntoApiResponseCopyWith<$Res>
    implements $QuntoApiResponseCopyWith<$Res> {
  factory _$QuntoApiResponseCopyWith(
          _QuntoApiResponse value, $Res Function(_QuntoApiResponse) then) =
      __$QuntoApiResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "status") bool status,
      @JsonKey(name: "messages") List<QuntoApiResponseMessages>? messages,
      @JsonKey(name: "errors") List<QuntoApiResponseErrors>? errors});
}

/// @nodoc
class __$QuntoApiResponseCopyWithImpl<$Res>
    extends _$QuntoApiResponseCopyWithImpl<$Res>
    implements _$QuntoApiResponseCopyWith<$Res> {
  __$QuntoApiResponseCopyWithImpl(
      _QuntoApiResponse _value, $Res Function(_QuntoApiResponse) _then)
      : super(_value, (v) => _then(v as _QuntoApiResponse));

  @override
  _QuntoApiResponse get _value => super._value as _QuntoApiResponse;

  @override
  $Res call({
    Object? status = freezed,
    Object? messages = freezed,
    Object? errors = freezed,
  }) {
    return _then(_QuntoApiResponse(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<QuntoApiResponseMessages>?,
      errors: errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<QuntoApiResponseErrors>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_QuntoApiResponse implements _QuntoApiResponse {
  const _$_QuntoApiResponse(
      {@JsonKey(name: "status")
          required this.status,
      @JsonKey(name: "messages")
          required final List<QuntoApiResponseMessages>? messages,
      @JsonKey(name: "errors")
          required final List<QuntoApiResponseErrors>? errors})
      : _messages = messages,
        _errors = errors;

  factory _$_QuntoApiResponse.fromJson(Map<String, dynamic> json) =>
      _$$_QuntoApiResponseFromJson(json);

  @override
  @JsonKey(name: "status")
  final bool status;
  @JsonKey(name: "messages")
  final List<QuntoApiResponseMessages>? _messages;
  @override
  @JsonKey(name: "messages")
  List<QuntoApiResponseMessages>? get messages {
    final value = _messages;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @JsonKey(name: "errors")
  final List<QuntoApiResponseErrors>? _errors;
  @override
  @JsonKey(name: "errors")
  List<QuntoApiResponseErrors>? get errors {
    final value = _errors;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'QuntoApiResponse(status: $status, messages: $messages, errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QuntoApiResponse &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.messages, messages) &&
            const DeepCollectionEquality().equals(other.errors, errors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(messages),
      const DeepCollectionEquality().hash(errors));

  @JsonKey(ignore: true)
  @override
  _$QuntoApiResponseCopyWith<_QuntoApiResponse> get copyWith =>
      __$QuntoApiResponseCopyWithImpl<_QuntoApiResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuntoApiResponseToJson(this);
  }
}

abstract class _QuntoApiResponse implements QuntoApiResponse {
  const factory _QuntoApiResponse(
          {@JsonKey(name: "status")
              required final bool status,
          @JsonKey(name: "messages")
              required final List<QuntoApiResponseMessages>? messages,
          @JsonKey(name: "errors")
              required final List<QuntoApiResponseErrors>? errors}) =
      _$_QuntoApiResponse;

  factory _QuntoApiResponse.fromJson(Map<String, dynamic> json) =
      _$_QuntoApiResponse.fromJson;

  @override
  @JsonKey(name: "status")
  bool get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "messages")
  List<QuntoApiResponseMessages>? get messages =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "errors")
  List<QuntoApiResponseErrors>? get errors =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$QuntoApiResponseCopyWith<_QuntoApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
