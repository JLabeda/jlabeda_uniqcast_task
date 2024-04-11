import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jlabeda_uniqcast_task/channels/controllers/channels_notifier_provider.dart';
import 'package:jlabeda_uniqcast_task/channels/model/channel/channel.dart';
import 'package:jlabeda_uniqcast_task/main.dart';

class ChannelTile extends ConsumerWidget {
  const ChannelTile(this.channel, {super.key});

  final Channel channel;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final channelsState = ref.watch(channelsNotifierProvider);
    final selectedChannel = channelsState.selectedChannel;
    final imagePath =
        'https://office-new-dev.uniqcast.com:12611/api/client/v1/${channelsState.operatorId}/channels/${channel.id}/logos/card?accessKey=WkVjNWNscFhORDBLCg==';
    const placeholderImagePath = 'assets/images/tv.jpeg';
    return GestureDetector(
      onTap: () {
        if (!kIsWeb) {
          ref
              .read(channelsNotifierProvider.notifier)
              .toggleChannelSelection(channel);
        }
      },
      child: Card(
        clipBehavior: Clip.antiAlias,
        margin: const EdgeInsets.symmetric(vertical: 8),
        elevation: 4,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 150),
          color:
              selectedChannel == channel ? UCTheme.secondary : UCTheme.primary,
          child: Wrap(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 8),
                height: 100,
                width: 100,
                child: Image.network(
                  imagePath,
                  errorBuilder: (_, __, ___) => Image.asset(
                    placeholderImagePath,
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
                    style: UCStyles.title1,
                  ),
                  Text(channel.resolution),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
