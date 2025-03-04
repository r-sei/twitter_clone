import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/components/home_bottom_navigation.dart';
import 'package:twitter_clone/provider/bottom_navigation_provider.dart';
import 'package:twitter_clone/view/direct_message_page.dart';
import 'package:twitter_clone/view/home_page.dart';
import 'package:twitter_clone/view/notification_page.dart';
import 'package:twitter_clone/view/search_page.dart';

class MainScreen extends ConsumerWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(bottomNavigationProvider);

    final pages = [
      const HomePage(),
      const SearchPage(),
      const NotificationPage(),
      const DirectMessagePage(),
    ];
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: const HomeBottomNavigation(),
    );
  }
}
