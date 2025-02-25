import 'package:flutter/material.dart';
import 'package:twitter_clone/components/profile_icon.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shape: const Border(
        bottom: BorderSide(
          color: Colors.grey,
          width: 2,
        ),
      ),
      leading: const ProfileIcon(iconSize: 24),
      centerTitle: true,
      title: const Text(
        '最新ツイート',
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
        ),
      ),
      actions: [
        ElevatedButton(
            onPressed: null,
            style: ElevatedButton.styleFrom(
                foregroundColor: Colors.blue, backgroundColor: Colors.black),
            child: const Text('アップグレード'))
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
