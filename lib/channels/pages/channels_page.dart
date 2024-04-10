import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:jlabeda_uniqcast_task/channels/controllers/channels_notifier_provider.dart';
import 'package:jlabeda_uniqcast_task/main.dart';

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
    return Scaffold(
      body: Padding(
        padding: MediaQuery.of(context).viewPadding +
            const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: FutureBuilder(
          future: future,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return const Center(
                child: Text('Error!'),
              );
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            }
            final channels = ref.watch(channelsNotifierProvider).channels;
            final operatorId = ref.watch(channelsNotifierProvider).operatorId;

            return ListView.builder(
              controller: controller,
              itemCount: channels.length,
              itemBuilder: (context, index) {
                final channel = channels[index];
                return Card(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  elevation: 4,
                  child: Wrap(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        height: 100,
                        width: 100,
                        child: Image.network(
                          'https://office-new-dev.uniqcast.com:12611/api/client/v1/$operatorId/channels/${channel.id}/logos/card?accessKey=WkVjNWNscFhORDBLCg==',
                          errorBuilder: (context, error, stackTrace) =>
                              Image.asset(
                            'assets/images/tv.jpeg',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            channel.name,
                            style: Theme.of(context).textTheme.title1,
                          ),
                          Text(channel.resolution),
                        ],
                      ),
                    ],
                  ),
                );
              },
            );
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
