// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gym_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GymDetails _$$_GymDetailsFromJson(Map<String, dynamic> json) =>
    _$_GymDetails(
      quntoGymId: json['quntoGymId'] as String,
      gymName: json['gymName'] as String,
      city: json['city'] as String,
      pinCode: json['pinCode'] as String,
      image: json['image'] as String,
      verified: json['verified'] as bool,
      country: json['country'] as String,
    );

Map<String, dynamic> _$$_GymDetailsToJson(_$_GymDetails instance) =>
    <String, dynamic>{
      'quntoGymId': instance.quntoGymId,
      'gymName': instance.gymName,
      'city': instance.city,
      'pinCode': instance.pinCode,
      'image': instance.image,
      'verified': instance.verified,
      'country': instance.country,
    };
