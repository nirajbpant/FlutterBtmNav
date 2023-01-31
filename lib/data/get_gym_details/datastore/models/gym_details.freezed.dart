// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'gym_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GymDetails _$GymDetailsFromJson(Map<String, dynamic> json) {
  return _GymDetails.fromJson(json);
}

/// @nodoc
mixin _$GymDetails {
  String get quntoGymId => throw _privateConstructorUsedError;
  String get gymName => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get pinCode => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  bool get verified => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GymDetailsCopyWith<GymDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GymDetailsCopyWith<$Res> {
  factory $GymDetailsCopyWith(
          GymDetails value, $Res Function(GymDetails) then) =
      _$GymDetailsCopyWithImpl<$Res>;
  $Res call(
      {String quntoGymId,
      String gymName,
      String city,
      String pinCode,
      String image,
      bool verified,
      String country});
}

/// @nodoc
class _$GymDetailsCopyWithImpl<$Res> implements $GymDetailsCopyWith<$Res> {
  _$GymDetailsCopyWithImpl(this._value, this._then);

  final GymDetails _value;
  // ignore: unused_field
  final $Res Function(GymDetails) _then;

  @override
  $Res call({
    Object? quntoGymId = freezed,
    Object? gymName = freezed,
    Object? city = freezed,
    Object? pinCode = freezed,
    Object? image = freezed,
    Object? verified = freezed,
    Object? country = freezed,
  }) {
    return _then(_value.copyWith(
      quntoGymId: quntoGymId == freezed
          ? _value.quntoGymId
          : quntoGymId // ignore: cast_nullable_to_non_nullable
              as String,
      gymName: gymName == freezed
          ? _value.gymName
          : gymName // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      pinCode: pinCode == freezed
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      verified: verified == freezed
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$GymDetailsCopyWith<$Res> implements $GymDetailsCopyWith<$Res> {
  factory _$GymDetailsCopyWith(
          _GymDetails value, $Res Function(_GymDetails) then) =
      __$GymDetailsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String quntoGymId,
      String gymName,
      String city,
      String pinCode,
      String image,
      bool verified,
      String country});
}

/// @nodoc
class __$GymDetailsCopyWithImpl<$Res> extends _$GymDetailsCopyWithImpl<$Res>
    implements _$GymDetailsCopyWith<$Res> {
  __$GymDetailsCopyWithImpl(
      _GymDetails _value, $Res Function(_GymDetails) _then)
      : super(_value, (v) => _then(v as _GymDetails));

  @override
  _GymDetails get _value => super._value as _GymDetails;

  @override
  $Res call({
    Object? quntoGymId = freezed,
    Object? gymName = freezed,
    Object? city = freezed,
    Object? pinCode = freezed,
    Object? image = freezed,
    Object? verified = freezed,
    Object? country = freezed,
  }) {
    return _then(_GymDetails(
      quntoGymId: quntoGymId == freezed
          ? _value.quntoGymId
          : quntoGymId // ignore: cast_nullable_to_non_nullable
              as String,
      gymName: gymName == freezed
          ? _value.gymName
          : gymName // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      pinCode: pinCode == freezed
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      verified: verified == freezed
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GymDetails implements _GymDetails {
  const _$_GymDetails(
      {required this.quntoGymId,
      required this.gymName,
      required this.city,
      required this.pinCode,
      required this.image,
      required this.verified,
      required this.country});

  factory _$_GymDetails.fromJson(Map<String, dynamic> json) =>
      _$$_GymDetailsFromJson(json);

  @override
  final String quntoGymId;
  @override
  final String gymName;
  @override
  final String city;
  @override
  final String pinCode;
  @override
  final String image;
  @override
  final bool verified;
  @override
  final String country;

  @override
  String toString() {
    return 'GymDetails(quntoGymId: $quntoGymId, gymName: $gymName, city: $city, pinCode: $pinCode, image: $image, verified: $verified, country: $country)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GymDetails &&
            const DeepCollectionEquality()
                .equals(other.quntoGymId, quntoGymId) &&
            const DeepCollectionEquality().equals(other.gymName, gymName) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality().equals(other.pinCode, pinCode) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.verified, verified) &&
            const DeepCollectionEquality().equals(other.country, country));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(quntoGymId),
      const DeepCollectionEquality().hash(gymName),
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(pinCode),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(verified),
      const DeepCollectionEquality().hash(country));

  @JsonKey(ignore: true)
  @override
  _$GymDetailsCopyWith<_GymDetails> get copyWith =>
      __$GymDetailsCopyWithImpl<_GymDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GymDetailsToJson(this);
  }
}

abstract class _GymDetails implements GymDetails {
  const factory _GymDetails(
      {required final String quntoGymId,
      required final String gymName,
      required final String city,
      required final String pinCode,
      required final String image,
      required final bool verified,
      required final String country}) = _$_GymDetails;

  factory _GymDetails.fromJson(Map<String, dynamic> json) =
      _$_GymDetails.fromJson;

  @override
  String get quntoGymId => throw _privateConstructorUsedError;
  @override
  String get gymName => throw _privateConstructorUsedError;
  @override
  String get city => throw _privateConstructorUsedError;
  @override
  String get pinCode => throw _privateConstructorUsedError;
  @override
  String get image => throw _privateConstructorUsedError;
  @override
  bool get verified => throw _privateConstructorUsedError;
  @override
  String get country => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GymDetailsCopyWith<_GymDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
