import 'package:flutter/material.dart';

class ProfileIconButton extends StatelessWidget {
  const ProfileIconButton({super.key, required this.iconSize});

  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => Scaffold.of(context).openDrawer(),
      icon: CircleAvatar(
        backgroundColor: Colors.grey.shade100,
        foregroundImage: const AssetImage('assets/profile.png'),
        radius: iconSize,
      ),
    );
  }
}
