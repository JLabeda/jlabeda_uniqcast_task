// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:jlabeda_uniqcast_task/channels/model/channel/channel.dart';
import 'package:jlabeda_uniqcast_task/core/model/uc_task_exception.dart';

part 'channels_state.freezed.dart';
part 'channels_state.g.dart';

@freezed
class ChannelsState with _$ChannelsState {
  const factory ChannelsState({
    required List<Channel> channels,
    String? operatorId,
    UCTaskException? exception,
  }) = _ChannelsState;

  factory ChannelsState.fromJson(Map<String, dynamic> json) =>
      _$ChannelsStateFromJson(json);

  factory ChannelsState.initial() => const ChannelsState(channels: []);
}
