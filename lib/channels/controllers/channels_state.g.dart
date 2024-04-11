// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channels_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChannelsStateImpl _$$ChannelsStateImplFromJson(Map<String, dynamic> json) =>
    _$ChannelsStateImpl(
      channels: (json['channels'] as List<dynamic>)
          .map((e) => Channel.fromJson(e as Map<String, dynamic>))
          .toList(),
      selectedChannel: json['selectedChannel'] == null
          ? null
          : Channel.fromJson(json['selectedChannel'] as Map<String, dynamic>),
      operatorId: json['operatorId'] as String?,
      exception: json['exception'] == null
          ? null
          : UCTaskException.fromJson(json['exception'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ChannelsStateImplToJson(_$ChannelsStateImpl instance) =>
    <String, dynamic>{
      'channels': instance.channels,
      'selectedChannel': instance.selectedChannel,
      'operatorId': instance.operatorId,
      'exception': instance.exception,
    };
