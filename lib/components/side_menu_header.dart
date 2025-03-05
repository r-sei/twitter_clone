import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:twitter_clone/components/profile_icon_button.dart';

class SideMenuHeader extends StatelessWidget {
  const SideMenuHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        ProfileIconButton(
          iconSize: 24,
          imageURL: 'assets/profile.png',
        ),
        Gap(4),
        Text(
          'hoge',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
        Gap(4),
        Text(
          '@hoge',
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey,
          ),
        ),
        Gap(4),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              '${1}Followers',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            Gap(4),
            Text(
              '${1}Following',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
          ],
        )
      ]),
    );
  }
}
