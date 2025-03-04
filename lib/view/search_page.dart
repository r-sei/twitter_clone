import 'package:flutter/material.dart';
import 'package:twitter_clone/components/search_app_bar.dart';
import 'package:twitter_clone/components/side_menu.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: SearchAppBar(),
      drawer: SideMenu(),
      body: Row(),
    );
  }
}
