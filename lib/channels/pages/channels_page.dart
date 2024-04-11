import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:jlabeda_uniqcast_task/channels/controllers/channels_notifier_provider.dart';
import 'package:jlabeda_uniqcast_task/channels/widgets/channel_tile.dart';
import 'package:jlabeda_uniqcast_task/channels/widgets/stream_player.dart';
import 'package:jlabeda_uniqcast_task/core/error_popup.dart';
import 'package:jlabeda_uniqcast_task/core/model/uc_task_exception.dart';
import 'package:jlabeda_uniqcast_task/core/web_variables.dart';

class ChannelsPage extends ConsumerStatefulWidget {
  const ChannelsPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ChannelsPageState();
}

class _ChannelsPageState extends ConsumerState<ChannelsPage> {
  late ScrollController controller;
  late Future<void> future;

  @override
  void initState() {
    controller = ScrollController();
    future = ref.read(channelsNotifierProvider.notifier).configureChannels();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(channelsNotifierProvider, (previous, next) async {
      if (next.exception is UCTaskException) {
        await ErrorPopup.show(context, next.exception!);
      }
    });
    final channelsState = ref.watch(channelsNotifierProvider);
    return Scaffold(
      body: Padding(
        padding: kIsWeb
            ? EdgeInsets.symmetric(
                horizontal: WebVariables.webPadding(context, 460),
              )
            : MediaQuery.of(context).viewPadding +
                const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: FutureBuilder(
          future: future,
          builder: (context, snapshot) {
            if (channelsState.exception is UCTaskException) {
              return Center(
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      ref.read(channelsNotifierProvider.notifier).reset();
                      ref
                          .read(channelsNotifierProvider.notifier)
                          .configureChannels();
                    },
                    child: const Text('Try again!'),
                  ),
                ),
              );
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            } else {
              final channels = channelsState.channels;
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const StreamPlayer(),
                  Expanded(
                    child: ListView.builder(
                      controller: controller,
                      itemCount: channels.length,
                      itemBuilder: (_, index) {
                        final channel = channels[index];
                        return ChannelTile(channel);
                      },
                    ),
                  ),
                ],
              );
            }
          },
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
