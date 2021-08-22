import 'package:flutter/material.dart';
import 'package:miniplayer/miniplayer.dart';
import 'package:nlighten/modules/explore/explore_navigator.dart';
import 'package:nlighten/modules/history/watch_history_navigator.dart';
import 'package:nlighten/modules/videoplayer/mini_video_player.dart';
import 'package:nlighten/modules/home/widget/app_bottom_navigation_bar.dart';
import 'package:nlighten/modules/videoplayer/utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  _onTabChange(int index) {
    controller.animateToHeight(state: PanelState.MIN);

    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          IndexedStack(
            index: _currentIndex,
            sizing: StackFit.expand,
            children: [
              const ExploreNavigator(),
              // const WatchHistoryNavigator(),
              Container()
            ],
          ),
          // MiniVideoPlayer(),
        ],
      ),
      bottomNavigationBar: ValueListenableBuilder(
        valueListenable: playerExpandProgress,
        builder: (BuildContext context, double height, Widget? child) {
          return AppBottomNavigationBar(
            onTabChange: _onTabChange,
            selectedTab: _currentIndex,
          );
        },
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.storage),
      //   onPressed: () {
      //     // context.read<VideoListCubit>().getVideos();
      //   },
      // ),
    );
  }
}
