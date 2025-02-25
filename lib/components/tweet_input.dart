import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:twitter_clone/components/profile_icon.dart';

class TweetInput extends StatelessWidget {
  const TweetInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 2,
          ),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.clear)),
        actions: [
          ElevatedButton(
            //要修正
            onPressed: null,
            style: ElevatedButton.styleFrom(
              // shape: ,
              backgroundColor: Colors.blue,
            ),
            child: const Text(
              'Tweet',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: AppBar().preferredSize.height),
          child: const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfileIcon(
                iconSize: 16,
              ),
              Gap(8),
              Expanded(
                child: TextField(
                  maxLines: null, // 高さ無制限
                  // keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    hintText: "いまどうしてる？",
                    border: InputBorder.none, // 枠線を消す
                  ),
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
