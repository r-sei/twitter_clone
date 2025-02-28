import 'package:flutter/material.dart';
import 'package:twitter_clone/components/profile_icon.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shape: const Border(
        bottom: BorderSide(
          color: Colors.white,
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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.white),
              child: const Text('アップグレード')),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
