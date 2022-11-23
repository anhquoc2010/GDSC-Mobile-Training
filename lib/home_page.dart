import 'package:flutter/material.dart';
import 'package:flutter_111122_login_screen/shared_widget/home_app_bar.dart';
import 'package:flutter_111122_login_screen/shared_widget/home_discovery_list.dart';
import 'package:flutter_111122_login_screen/shared_widget/home_search_bar.dart';
import 'package:flutter_111122_login_screen/shared_widget/home_suggestion_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 240, 240),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 55, 20, 0),
          child: SingleChildScrollView(
            child: Column(
              children: const [
                HomeAppBar(),
                SizedBox(height: 20),
                HomeSearchBar(),
                SizedBox(height: 15),
                HomeDiscoveryList(),
                SizedBox(height: 15),
                HomeSuggestionList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
