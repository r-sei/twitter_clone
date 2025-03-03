import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:twitter_clone/components/profile_icon.dart';
import 'package:twitter_clone/components/tweet_button.dart';

class TweetInput extends ConsumerWidget {
  TweetInput({super.key}) : textController = TextEditingController();

  final TextEditingController textController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        shape: const Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 1.0,
          ),
        ),
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.clear)),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TweetButton(
              textController: textController,
            ), //＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: AppBar().preferredSize.height),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ProfileIcon(
                iconSize: 24,
              ),
              const Gap(8),
              Expanded(
                child: TextField(
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                  controller: textController,
                  decoration: const InputDecoration(
                    hintText: "いまどうしてる？",
                    border: InputBorder.none,
                  ),
                  style: const TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
