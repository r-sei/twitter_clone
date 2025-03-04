import 'package:flutter/material.dart';
import 'package:twitter_clone/components/profile_icon_button.dart';

class SearchAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SearchAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    // final TextEditingController textController;

    return AppBar(
      shape: const Border(
        bottom: BorderSide(
          color: Colors.white,
          width: 2,
        ),
      ),
      leading: const ProfileIconButton(iconSize: 24),
      centerTitle: true,
      title: const TextField(
        keyboardType: TextInputType.multiline,
        // controller: textController,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search),
          hintText: "検索",
          border: InputBorder.none,
        ),
        style: TextStyle(fontSize: 18),
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
