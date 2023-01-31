// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginResponseData _$$_LoginResponseDataFromJson(Map<String, dynamic> json) =>
    _$_LoginResponseData(
      acccessToken: json['access_token'] as String,
      refreshToken: json['refresh_token'] as String,
      expiresIn: json['expires_in'] as int,
    );

Map<String, dynamic> _$$_LoginResponseDataToJson(
        _$_LoginResponseData instance) =>
    <String, dynamic>{
      'access_token': instance.acccessToken,
      'refresh_token': instance.refreshToken,
      'expires_in': instance.expiresIn,
    };
