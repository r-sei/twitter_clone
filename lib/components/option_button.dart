import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/model/tweet_model.dart';
import 'package:twitter_clone/provider/service_provider.dart';

class OptionButton extends ConsumerWidget {
  const OptionButton({super.key, required this.tweet});

  final TweetModel tweet;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PopupMenuButton(
      icon: const Icon(Icons.more_horiz, size: 20),
      onSelected: (value) {
        switch (value) {
          case 'delete':
            ref.read(serviceProvider).deleteTweet(tweet.tweetID);
            break;
        }
      },
      itemBuilder: (BuildContext context) => [
        const PopupMenuItem(value: 'delete', child: Text('delete this tweet')),
      ],
    );
  }
}
