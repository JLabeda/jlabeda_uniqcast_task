import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:jlabeda_uniqcast_task/auth/controllers/auth_notifier_provider.dart';
import 'package:jlabeda_uniqcast_task/channels/controllers/channels_notifier.dart';
import 'package:jlabeda_uniqcast_task/channels/controllers/channels_state.dart';
import 'package:jlabeda_uniqcast_task/channels/interface/channels_interface.dart';
import 'package:jlabeda_uniqcast_task/core/dio_client.dart';

final _channelsServiceProvider = Provider(
  (ref) => ChannelsService(
    ref.watch(dioClientProvider),
  ),
  name: 'ChannelsService',
);

final channelsNotifierProvider =
    StateNotifierProvider<ChannelsNotifier, ChannelsState>(
  (ref) => ChannelsNotifier(
    service: ref.read(_channelsServiceProvider),
    authState: ref.watch(authNotifierProvider),
  ),
  name: 'ChannelsNotifierProvider',
);
