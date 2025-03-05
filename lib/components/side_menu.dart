import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:twitter_clone/components/side_menu_header.dart';

enum SideMenuOptions {
  profile(Icons.account_circle, 'Profile'),
  lists(Icons.list, 'Lists'),
  bookmarks(Icons.bookmark_outline, 'Bookmarks'),
  moments(Icons.bolt, 'Moments');

  const SideMenuOptions(this.icon, this.optionName);

  final IconData icon;
  final String optionName;
}

enum SettingOptions {
  settings(Icons.settings, 'Setting and privacy'),
  help(Icons.help_outline, 'Help center');

  const SettingOptions(this.icon, this.optionName);

  final IconData icon;
  final String optionName;
}

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
          for (final options in SideMenuOptions.values) ...{
            ListTile(
              leading: Icon(options.icon),
              title: Text(options.optionName),
              onTap: () {},
            ),
          },
          const Gap(16),
          const Divider(),
          const Gap(16),
          for (final options in SettingOptions.values) ...{
            ListTile(
              leading: Icon(options.icon),
              title: Text(options.optionName),
              onTap: () {},
            ),
          },
        ],
      ),
    );
  }
}
