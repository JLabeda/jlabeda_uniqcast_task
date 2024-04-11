import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:jlabeda_uniqcast_task/auth/controllers/auth_state.dart';
import 'package:jlabeda_uniqcast_task/channels/controllers/channels_state.dart';
import 'package:jlabeda_uniqcast_task/channels/interface/channels_interface.dart';
import 'package:jlabeda_uniqcast_task/channels/model/channel/channel.dart';
import 'package:jlabeda_uniqcast_task/core/dartz_extension.dart';
import 'package:jlabeda_uniqcast_task/core/model/uc_task_exception.dart';

/// Notifier responsible for managaing of channel data
class ChannelsNotifier extends StateNotifier<ChannelsState> {
  ChannelsNotifier({
    required this.service,
    required this.authState,
  }) : super(ChannelsState.initial());

  final ChannelsInterface service;
  final AuthState authState;

  Future<void> configureChannels() async {
    debugPrint('[ChannelsNotifier] configureChannels()');
    if (authState.authData == null) {
      state = state.copyWith(exception: const UCTaskException.auth());
      return;
    }
    final operatorId = authState.authData!.operatorId;
    final packagesResult = await service.getPackages(
      operatorId: operatorId,
      userId: authState.authData!.userId.toString(),
    );
    if (packagesResult.isLeft()) {
      state = state.copyWith(exception: packagesResult.getLeftOrThrow());
      return;
    }
    final packageData = packagesResult.getRightOrThrow();
    final channelsResult = await service.getChannels(
      operatorId: operatorId,
      packages: packageData.map((e) => e.id).toList(),
    );
    if (channelsResult.isLeft()) {
      state = state.copyWith(exception: channelsResult.getLeftOrThrow());
      return;
    }
    state = state.copyWith(
      channels: channelsResult.getRightOrThrow(),
      operatorId: operatorId,
      exception: null,
    );
  }

  void toggleChannelSelection([Channel? selectedChannel]) {
    if (selectedChannel is Channel) {
      state = state.copyWith(
        selectedChannel: selectedChannel,
      );
    } else {
      state = state.copyWith(
        selectedChannel: null,
      );
    }
  }

  void reset() => state = ChannelsState.initial();

  @visibleForTesting
  ChannelsState getState() => state;
}
