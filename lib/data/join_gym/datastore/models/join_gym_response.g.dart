// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'join_gym_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JoinGymResponse _$$_JoinGymResponseFromJson(Map<String, dynamic> json) =>
    _$_JoinGymResponse(
      status: json['status'] as bool,
      errors: json['errors'] == null
          ? null
          : QuntoApiResponseErrors.fromJson(
              json['errors'] as Map<String, dynamic>),
      messages: (json['messages'] as List<dynamic>?)
          ?.map((e) =>
              QuntoApiResponseMessages.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_JoinGymResponseToJson(_$_JoinGymResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'errors': instance.errors?.toJson(),
      'messages': instance.messages?.map((e) => e.toJson()).toList(),
    };
