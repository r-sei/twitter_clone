import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:twitter_clone/components/profile_icon.dart';
import 'package:twitter_clone/model/tweet_model.dart';

class TweetTile extends ConsumerWidget {
  const TweetTile({super.key, required this.tweet});

  final TweetModel tweet;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ProfileIcon(iconSize: 24),
          const Gap(8),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      //User name
                      tweet.userName,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    const Gap(4),
                    Text(
                      //User ID
                      '@${tweet.userID}',
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                    const Gap(4),
                    Text(
                      //date
                      tweet.date,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      icon: const Icon(Icons.more_horiz, size: 20),
                      onPressed: () {},
                    ),
                  ],
                ),
                Text(
                  //Tweet text
                  tweet.tweetText,
                  maxLines: null,
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                ),
                const Gap(8),
                //reply, retweet, good, shareボタンの作成
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Row(children: [
                          IconButton(
                            icon: const Icon(Icons.chat_outlined),
                            onPressed: () {},
                          ),
                          const Gap(8),
                          const Text('0'), //threads
                        ]),
                      ),
                      Expanded(
                        child: Row(children: [
                          IconButton(
                            icon: const Icon(Icons.autorenew),
                            onPressed: () {},
                          ),
                          const Gap(8),
                          const Text('0'), //retweet
                        ]),
                      ),
                      Expanded(
                        child: Row(children: [
                          IconButton(
                            icon: const Icon(Icons.favorite_outline),
                            onPressed: () {},
                          ),
                          const Gap(8),
                          const Text('0'), //good
                        ]),
                      ),
                      IconButton(
                        icon: const Icon(Icons.share),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                const Gap(12),
                const Divider(height: 1, color: Colors.grey),
              ],
            ),
          )
        ],
      ),
    );
  }
}
