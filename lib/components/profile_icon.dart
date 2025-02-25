import 'package:flutter/material.dart';

class ProfileIcon extends StatelessWidget {
  const ProfileIcon({super.key, required this.iconSize});

  final iconSize;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: null,
      icon: CircleAvatar(
        backgroundColor: Colors.grey.shade100,
        foregroundImage: const AssetImage('assets/profile.png'),
        radius: iconSize,
      ),
    );
  }
}
