// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDetails _$$_UserDetailsFromJson(Map<String, dynamic> json) =>
    _$_UserDetails(
      firstName: json['firstName'] as String?,
      phone: json['phone'] as String?,
      lastName: json['lastName'] as String?,
      gender: json['gender'] as String?,
      weight: (json['weight'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      dateOfBirth: json['dateOfBirth'] as String?,
      bmi: (json['bmi'] as num?)?.toDouble(),
      physicalActivity: json['physicalActivity'] as String?,
      goal: json['goal'] as String?,
      gymMemberGymDetailsData: json['gymMemberGymDetailsData'] as String?,
    );

Map<String, dynamic> _$$_UserDetailsToJson(_$_UserDetails instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'phone': instance.phone,
      'lastName': instance.lastName,
      'gender': instance.gender,
      'weight': instance.weight,
      'height': instance.height,
      'dateOfBirth': instance.dateOfBirth,
      'bmi': instance.bmi,
      'physicalActivity': instance.physicalActivity,
      'goal': instance.goal,
      'gymMemberGymDetailsData': instance.gymMemberGymDetailsData,
    };
