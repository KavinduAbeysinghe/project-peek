import 'package:flutter/material.dart';
import 'package:project_peek_you/screens/people_search.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3, child: Scaffold(
      appBar: AppBar(
        title: const Text("Search Panel"),
        backgroundColor: const Color(0xFFFFC800),
        bottom: const TabBar(tabs: [
          Tab(text: "People",),
          Tab(text: "Company",),
          Tab(text: "Image",)
        ]),
      ),
      body: const TabBarView(children: [
        PeopleSearch(),
        Text("Company"),
        Text("Image"),
      ]),
    ));
  }
}
