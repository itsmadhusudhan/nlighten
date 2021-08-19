import 'package:flutter/material.dart';

class AppBottomNavigationBar extends StatelessWidget {
  final Function(int index) onTabChange;

  final int selectedTab;

  const AppBottomNavigationBar({
    required this.selectedTab,
    required this.onTabChange,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: onTabChange,
      currentIndex: selectedTab,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.video_collection),
          label: "Videos",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.audiotrack),
          label: "Audios",
        ),
      ],
    );
  }
}
