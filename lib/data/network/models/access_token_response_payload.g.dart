// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'access_token_response_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AccessTokenResponsePayload _$$_AccessTokenResponsePayloadFromJson(
        Map<String, dynamic> json) =>
    _$_AccessTokenResponsePayload(
      data: json['data'] == null
          ? null
          : AccessTokenResponse.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AccessTokenResponsePayloadToJson(
        _$_AccessTokenResponsePayload instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
    };
