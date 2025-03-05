import 'package:flutter/material.dart';
import 'package:twitter_clone/components/search_app_bar.dart';
import 'package:twitter_clone/components/side_menu.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SearchAppBar(),
      drawer: const SideMenu(),
      body: Center(
        child: Column(
          children: [
            Container(
              child: const Text('未実装'),
            ),
          ],
        ),
      ),
    );
  }
}
