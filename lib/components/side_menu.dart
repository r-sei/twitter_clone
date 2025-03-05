import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:twitter_clone/components/side_menu_header.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const SideMenuHeader(),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.account_circle),
            title: const Text('Profile'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.list),
            title: const Text('Lists'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.bookmark_outline),
            title: const Text('Bookmarks'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.bolt),
            title: const Text('Moments'),
            onTap: () {},
          ),
          const Gap(16),
          const Divider(),
          const Gap(16),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Setting and privacy'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.help_outline),
            title: const Text('Help center'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
