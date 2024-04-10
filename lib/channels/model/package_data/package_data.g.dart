// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PackageDataImpl _$$PackageDataImplFromJson(Map<String, dynamic> json) =>
    _$PackageDataImpl(
      id: json['id'] as int,
      purchased: _$JsonConverterFromJson<String, DateTime?>(
          json['purchased'], const DateConverter().fromJson),
    );

Map<String, dynamic> _$$PackageDataImplToJson(_$PackageDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'purchased': const DateConverter().toJson(instance.purchased),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);
