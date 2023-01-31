// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qunto_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuntoApiResponse _$$_QuntoApiResponseFromJson(Map<String, dynamic> json) =>
    _$_QuntoApiResponse(
      status: json['status'] as bool,
      messages: (json['messages'] as List<dynamic>?)
          ?.map((e) =>
              QuntoApiResponseMessages.fromJson(e as Map<String, dynamic>))
          .toList(),
      errors: (json['errors'] as List<dynamic>?)
          ?.map(
              (e) => QuntoApiResponseErrors.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_QuntoApiResponseToJson(_$_QuntoApiResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'messages': instance.messages?.map((e) => e.toJson()).toList(),
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };
