import 'package:flutter/material.dart';

class TweetButton extends StatelessWidget {
  const TweetButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      //要修正
      onPressed: () {},
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
