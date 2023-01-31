// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) {
  return _LoginResponse.fromJson(json);
}

/// @nodoc
mixin _$LoginResponse {
  @JsonKey(name: "status")
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: "messages")
  List<QuntoApiResponseMessages>? get messages =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "errors")
  List<QuntoApiResponseErrors>? get errors =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "payload")
  LoginResponsePayload? get payload => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginResponseCopyWith<LoginResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResponseCopyWith<$Res> {
  factory $LoginResponseCopyWith(
          LoginResponse value, $Res Function(LoginResponse) then) =
      _$LoginResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "status") bool status,
      @JsonKey(name: "messages") List<QuntoApiResponseMessages>? messages,
      @JsonKey(name: "errors") List<QuntoApiResponseErrors>? errors,
      @JsonKey(name: "payload") LoginResponsePayload? payload});

  $LoginResponsePayloadCopyWith<$Res>? get payload;
}

/// @nodoc
class _$LoginResponseCopyWithImpl<$Res>
    implements $LoginResponseCopyWith<$Res> {
  _$LoginResponseCopyWithImpl(this._value, this._then);

  final LoginResponse _value;
  // ignore: unused_field
  final $Res Function(LoginResponse) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? messages = freezed,
    Object? errors = freezed,
    Object? payload = freezed,
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
      payload: payload == freezed
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as LoginResponsePayload?,
    ));
  }

  @override
  $LoginResponsePayloadCopyWith<$Res>? get payload {
    if (_value.payload == null) {
      return null;
    }

    return $LoginResponsePayloadCopyWith<$Res>(_value.payload!, (value) {
      return _then(_value.copyWith(payload: value));
    });
  }
}

/// @nodoc
abstract class _$LoginResponseCopyWith<$Res>
    implements $LoginResponseCopyWith<$Res> {
  factory _$LoginResponseCopyWith(
          _LoginResponse value, $Res Function(_LoginResponse) then) =
      __$LoginResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "status") bool status,
      @JsonKey(name: "messages") List<QuntoApiResponseMessages>? messages,
      @JsonKey(name: "errors") List<QuntoApiResponseErrors>? errors,
      @JsonKey(name: "payload") LoginResponsePayload? payload});

  @override
  $LoginResponsePayloadCopyWith<$Res>? get payload;
}

/// @nodoc
class __$LoginResponseCopyWithImpl<$Res>
    extends _$LoginResponseCopyWithImpl<$Res>
    implements _$LoginResponseCopyWith<$Res> {
  __$LoginResponseCopyWithImpl(
      _LoginResponse _value, $Res Function(_LoginResponse) _then)
      : super(_value, (v) => _then(v as _LoginResponse));

  @override
  _LoginResponse get _value => super._value as _LoginResponse;

  @override
  $Res call({
    Object? status = freezed,
    Object? messages = freezed,
    Object? errors = freezed,
    Object? payload = freezed,
  }) {
    return _then(_LoginResponse(
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
      payload: payload == freezed
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as LoginResponsePayload?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginResponse implements _LoginResponse {
  const _$_LoginResponse(
      {@JsonKey(name: "status")
          required this.status,
      @JsonKey(name: "messages")
          required final List<QuntoApiResponseMessages>? messages,
      @JsonKey(name: "errors")
          required final List<QuntoApiResponseErrors>? errors,
      @JsonKey(name: "payload")
          required this.payload})
      : _messages = messages,
        _errors = errors;

  factory _$_LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$$_LoginResponseFromJson(json);

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
  @JsonKey(name: "payload")
  final LoginResponsePayload? payload;

  @override
  String toString() {
    return 'LoginResponse(status: $status, messages: $messages, errors: $errors, payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginResponse &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.messages, messages) &&
            const DeepCollectionEquality().equals(other.errors, errors) &&
            const DeepCollectionEquality().equals(other.payload, payload));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(messages),
      const DeepCollectionEquality().hash(errors),
      const DeepCollectionEquality().hash(payload));

  @JsonKey(ignore: true)
  @override
  _$LoginResponseCopyWith<_LoginResponse> get copyWith =>
      __$LoginResponseCopyWithImpl<_LoginResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginResponseToJson(this);
  }
}

abstract class _LoginResponse implements LoginResponse {
  const factory _LoginResponse(
      {@JsonKey(name: "status")
          required final bool status,
      @JsonKey(name: "messages")
          required final List<QuntoApiResponseMessages>? messages,
      @JsonKey(name: "errors")
          required final List<QuntoApiResponseErrors>? errors,
      @JsonKey(name: "payload")
          required final LoginResponsePayload? payload}) = _$_LoginResponse;

  factory _LoginResponse.fromJson(Map<String, dynamic> json) =
      _$_LoginResponse.fromJson;

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
  @JsonKey(name: "payload")
  LoginResponsePayload? get payload => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoginResponseCopyWith<_LoginResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
