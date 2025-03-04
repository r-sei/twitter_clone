import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/provider/bottom_navigation_provider.dart';

class HomeBottomNavigation extends ConsumerWidget {
  const HomeBottomNavigation({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(bottomNavigationProvider);

    const pageTypes = [
      BottomNavigationBarItem(
        icon: Icon(Icons.home_outlined),
        activeIcon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.search),
        activeIcon: Icon(Icons.search_rounded),
        label: 'Search',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.notifications_outlined),
        activeIcon: Icon(Icons.notifications),
        label: 'Notifications',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.email_outlined),
        activeIcon: Icon(Icons.email),
        label: 'Email',
      ),
    ];

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      selectedIconTheme: const IconThemeData(size: 32),
      unselectedIconTheme: const IconThemeData(size: 28),
      showSelectedLabels: false,
      showUnselectedLabels: false,
      elevation: 0,
      items: pageTypes,
      currentIndex: index,
      onTap: (newIndex) {
        ref.read(bottomNavigationProvider.notifier).state = newIndex;
      },
    );
  }
}
