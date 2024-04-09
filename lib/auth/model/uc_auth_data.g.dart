// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'uc_auth_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UCAuthDataImpl _$$UCAuthDataImplFromJson(Map<String, dynamic> json) =>
    _$UCAuthDataImpl(
      accesToken: json['access_token'] as String,
      refreshToken: json['refresh_token'] as String,
    );

Map<String, dynamic> _$$UCAuthDataImplToJson(_$UCAuthDataImpl instance) =>
    <String, dynamic>{
      'access_token': instance.accesToken,
      'refresh_token': instance.refreshToken,
    };
