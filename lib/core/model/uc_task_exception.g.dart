// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'uc_task_exception.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthImpl _$$AuthImplFromJson(Map<String, dynamic> json) => _$AuthImpl(
      json['message'] as String? ??
          'Problem with authentication service. Please try again later, or contact support.',
      json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AuthImplToJson(_$AuthImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'runtimeType': instance.$type,
    };

_$ChannelsImpl _$$ChannelsImplFromJson(Map<String, dynamic> json) =>
    _$ChannelsImpl(
      json['message'] as String? ??
          'Problem with authentication service. Please try again later, or contact support.',
      json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ChannelsImplToJson(_$ChannelsImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'runtimeType': instance.$type,
    };

_$CustomMessageImpl _$$CustomMessageImplFromJson(Map<String, dynamic> json) =>
    _$CustomMessageImpl(
      message: json['message'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CustomMessageImplToJson(_$CustomMessageImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'runtimeType': instance.$type,
    };
