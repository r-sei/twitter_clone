import 'package:flutter/material.dart';
import 'package:twitter_clone/components/home_app_bar.dart';
import 'package:twitter_clone/components/home_body.dart';
import 'package:twitter_clone/components/home_bottom_navigation.dart';
import 'package:twitter_clone/components/tweet_input.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      body: const HomeBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const TweetInput()),
          );
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: const HomeBottomNavigation(),
    );
  }
}
