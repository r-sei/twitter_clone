import 'package:flutter/material.dart';

class ProfileIcon extends StatelessWidget {
  const ProfileIcon({super.key, required this.iconSize});

  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.grey.shade100,
      foregroundImage: const AssetImage('assets/profile.png'),
      radius: iconSize,
    );
  }
}
