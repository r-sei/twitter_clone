import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:twitter_clone/components/format_from_timstamp.dart';
import 'package:twitter_clone/components/option_button.dart';
import 'package:twitter_clone/components/profile_icon_button.dart';
import 'package:twitter_clone/model/tweet_model.dart';
import 'package:twitter_clone/provider/service_provider.dart';
import 'package:twitter_clone/provider/tweet_action_provider.dart';

class TweetTile extends ConsumerWidget {
  const TweetTile({super.key, required this.tweet});

  final TweetModel tweet;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isReTweeted =
        ref.watch(reTweetProvider)[tweet.tweetID] ?? tweet.reTweet;
    final isGood = ref.watch(goodProvider)[tweet.tweetID] ?? tweet.good;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ProfileIconButton(iconSize: 24, imageURL: 'assets/profile.png',),//ここどうしよ
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
                      formatTimestamp(tweet.date),
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                    const Spacer(),
                    OptionButton(tweet: tweet),
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
                //reply, retweet, good, shareボタン
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Row(children: [
                          IconButton(
                            icon: const Icon(Icons.chat_outlined),
                            onPressed: () {
                              //count処理
                            },
                          ),
                          const Gap(8),
                          Text('${tweet.replyCount}'), //reply
                        ]),
                      ),
                      Expanded(
                        child: Row(children: [
                          IconButton(
                            icon: Icon(
                              isReTweeted
                                  ? Icons.autorenew
                                  : Icons.autorenew_outlined,
                              color: isReTweeted ? Colors.blue : Colors.black,
                            ),
                            onPressed: () {
                              ref
                                  .read(serviceProvider)
                                  .reTweet(tweet.tweetID, !tweet.reTweet);
                              //count処理
                            },
                          ),
                          const Gap(8),
                          Text('${tweet.reTweetCount}'), //retweet
                        ]),
                      ),
                      Expanded(
                        child: Row(children: [
                          IconButton(
                            icon: Icon(
                              isGood ? Icons.favorite : Icons.favorite_border,
                              color: isGood ? Colors.pink : Colors.grey,
                              size: 20,
                            ),
                            onPressed: () {
                              ref
                                  .read(serviceProvider)
                                  .good(tweet.tweetID, !tweet.good);
                              //count処理
                            },
                          ),
                          const Gap(8),
                          Text('${tweet.goodCount}'), //good
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
