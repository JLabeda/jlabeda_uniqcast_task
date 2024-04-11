import 'dart:convert';

import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jlabeda_uniqcast_task/channels/controllers/channels_notifier_provider.dart';

class StreamPlayer extends ConsumerStatefulWidget {
  const StreamPlayer({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _StreamPlayerState();
}

class _StreamPlayerState extends ConsumerState<StreamPlayer> {
  late final BetterPlayerController controller;

  @override
  void initState() {
    const base64StreamString =
        'aHR0cHM6Ly9kZW1vLnVuaWZpZWQtc3RyZWFtaW5nLmNvbS9rOHMvZmVhdHVyZXMvc3RhYmxlL3ZpZGVvL3RlYXJzLW9mLXN0ZWVsL3RlYXJzLW9mLXN0ZWVsLmlzbS8ubTN1OA==';
    controller = _configureStreamController(base64StreamString);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      duration: const Duration(milliseconds: 800),
      curve: Curves.easeInOutBack,
      child: Visibility(
        visible: ref.watch(channelsNotifierProvider).selectedChannel != null,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            IconButton(
              onPressed: () {
                controller.pause();
                ref
                    .read(channelsNotifierProvider.notifier)
                    .toggleChannelSelection();
              },
              icon: Icon(
                Icons.cancel,
                size: 28,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: BetterPlayer(controller: controller),
              ),
              // ),
            ),
          ],
        ),
      ),
    );
  }

  BetterPlayerController _configureStreamController(String base64StreamString) {
    return BetterPlayerController(
      const BetterPlayerConfiguration(
        controlsConfiguration:
            BetterPlayerControlsConfiguration(enableFullscreen: false),
        deviceOrientationsAfterFullScreen: [DeviceOrientation.portraitUp],
        autoDetectFullscreenAspectRatio: true,
        fit: BoxFit.contain,
        autoDispose: false,
      ),
      betterPlayerDataSource: BetterPlayerDataSource(
        BetterPlayerDataSourceType.network,
        utf8.decoder.convert(
          base64.decode(base64StreamString),
        ),
        bufferingConfiguration: const BetterPlayerBufferingConfiguration(
          minBufferMs: 5000,
          maxBufferMs: 100000,
          bufferForPlaybackMs: 2500,
          bufferForPlaybackAfterRebufferMs: 5000,
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
