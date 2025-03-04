import 'package:flutter/material.dart';
import 'package:twitter_clone/components/profile_icon_button.dart';

class SearchAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SearchAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    // final TextEditingController textController;
    final fillColor = Colors.grey.shade100;

    return AppBar(
      shape: const Border(
        bottom: BorderSide(
          color: Colors.white,
          width: 2,
        ),
      ),
      leading: const ProfileIconButton(iconSize: 24),
      centerTitle: true,
      title: TextField(
        textAlign: TextAlign.center,
        keyboardType: TextInputType.multiline,
        // controller: textController,
        decoration: InputDecoration(
          filled: true,
          fillColor: fillColor,
          prefixIcon: const Icon(Icons.search),
          hintText: "検索",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32),
            borderSide: BorderSide(color: fillColor),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32),
            borderSide: BorderSide(color: fillColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32),
            borderSide: BorderSide(color: fillColor),
          ),
        ),
        style: const TextStyle(fontSize: 18),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
