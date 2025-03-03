import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/components/home_app_bar.dart';
import 'package:twitter_clone/components/home_body.dart';
import 'package:twitter_clone/components/home_bottom_navigation.dart';
import 'package:twitter_clone/components/tweet_input.dart';
import 'package:twitter_clone/provider/service_provider.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tweetData = ref.watch(fetchStreamProvider);

    return tweetData.when(data: (data) {
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
          shape: const CircleBorder(),
          child: const Icon(Icons.add),
        ),
        bottomNavigationBar: const HomeBottomNavigation(),
      );
    }, error: (error, _) {
      return Center(
        child: Text(error.toString()),
      );
    }, loading: () {
      return const Center(
        child: CircularProgressIndicator(),
      );
    });
  }
}
