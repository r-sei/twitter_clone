import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/components/get_day.dart';
import 'package:twitter_clone/model/tweet_model.dart';
import 'package:twitter_clone/provider/service_provider.dart';

class TweetButton extends ConsumerWidget {
  const TweetButton({super.key, required this.textController});

  final TextEditingController textController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      //＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
      onPressed: () {
        ref.read(serviceProvider).createNewTweet(TweetModel(
            userID: 'hoge',
            userName: 'hoge',
            date: getDay(),
            tweetText: textController.text,
            good: false,
            reTweet: false));

        // 初期化
        textController.clear();
        Navigator.pop(context);
      },
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        backgroundColor: Colors.blue,
      ),
      child: const Text(
        'Tweet',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
