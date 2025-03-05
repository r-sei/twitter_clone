import 'package:flutter/material.dart';

class ProfileIconButton extends StatelessWidget {
  const ProfileIconButton({
    super.key,
    required this.iconSize,
    required this.imageURL,
    this.onPressed,
  });

  final double iconSize;
  final String imageURL;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      visualDensity: VisualDensity.compact,
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      icon: CircleAvatar(
        backgroundColor: Colors.grey.shade100,
        foregroundImage: AssetImage(imageURL),
        radius: iconSize,
      ),
    );
  }
}
