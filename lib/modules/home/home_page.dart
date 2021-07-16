import 'package:flutter/material.dart';
import 'package:nlighten/modules/explore/explore_page.dart';
import 'package:nlighten/modules/history/watch_history.dart';
import 'widget/widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  _onTabChange(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        sizing: StackFit.expand,
        index: _currentIndex,
        children: [
          const ExplorePage(),
          const WatchHistory(),
        ],
      ),
      bottomNavigationBar: AppBottomNavigationBar(
        onTabChange: _onTabChange,
        selectedTab: _currentIndex,
      ),
    );
  }
}
