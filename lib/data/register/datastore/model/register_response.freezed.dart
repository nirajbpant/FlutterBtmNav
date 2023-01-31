// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterReponse _$RegisterReponseFromJson(Map<String, dynamic> json) {
  return _RegisterReponse.fromJson(json);
}

/// @nodoc
mixin _$RegisterReponse {
  @JsonKey(name: "data")
  String get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterReponseCopyWith<RegisterReponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterReponseCopyWith<$Res> {
  factory $RegisterReponseCopyWith(
          RegisterReponse value, $Res Function(RegisterReponse) then) =
      _$RegisterReponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "data") String data});
}

/// @nodoc
class _$RegisterReponseCopyWithImpl<$Res>
    implements $RegisterReponseCopyWith<$Res> {
  _$RegisterReponseCopyWithImpl(this._value, this._then);

  final RegisterReponse _value;
  // ignore: unused_field
  final $Res Function(RegisterReponse) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RegisterReponseCopyWith<$Res>
    implements $RegisterReponseCopyWith<$Res> {
  factory _$RegisterReponseCopyWith(
          _RegisterReponse value, $Res Function(_RegisterReponse) then) =
      __$RegisterReponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "data") String data});
}

/// @nodoc
class __$RegisterReponseCopyWithImpl<$Res>
    extends _$RegisterReponseCopyWithImpl<$Res>
    implements _$RegisterReponseCopyWith<$Res> {
  __$RegisterReponseCopyWithImpl(
      _RegisterReponse _value, $Res Function(_RegisterReponse) _then)
      : super(_value, (v) => _then(v as _RegisterReponse));

  @override
  _RegisterReponse get _value => super._value as _RegisterReponse;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_RegisterReponse(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegisterReponse implements _RegisterReponse {
  const _$_RegisterReponse({@JsonKey(name: "data") required this.data});

  factory _$_RegisterReponse.fromJson(Map<String, dynamic> json) =>
      _$$_RegisterReponseFromJson(json);

  @override
  @JsonKey(name: "data")
  final String data;

  @override
  String toString() {
    return 'RegisterReponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterReponse &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$RegisterReponseCopyWith<_RegisterReponse> get copyWith =>
      __$RegisterReponseCopyWithImpl<_RegisterReponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisterReponseToJson(this);
  }
}

abstract class _RegisterReponse implements RegisterReponse {
  const factory _RegisterReponse(
      {@JsonKey(name: "data") required final String data}) = _$_RegisterReponse;

  factory _RegisterReponse.fromJson(Map<String, dynamic> json) =
      _$_RegisterReponse.fromJson;

  @override
  @JsonKey(name: "data")
  String get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RegisterReponseCopyWith<_RegisterReponse> get copyWith =>
      throw _privateConstructorUsedError;
}
