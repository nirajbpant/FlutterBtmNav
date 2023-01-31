// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginResponse _$$_LoginResponseFromJson(Map<String, dynamic> json) =>
    _$_LoginResponse(
      status: json['status'] as bool,
      messages: (json['messages'] as List<dynamic>?)
          ?.map((e) =>
              QuntoApiResponseMessages.fromJson(e as Map<String, dynamic>))
          .toList(),
      errors: (json['errors'] as List<dynamic>?)
          ?.map(
              (e) => QuntoApiResponseErrors.fromJson(e as Map<String, dynamic>))
          .toList(),
      payload: json['payload'] == null
          ? null
          : LoginResponsePayload.fromJson(
              json['payload'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LoginResponseToJson(_$_LoginResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'messages': instance.messages,
      'errors': instance.errors,
      'payload': instance.payload,
    };
