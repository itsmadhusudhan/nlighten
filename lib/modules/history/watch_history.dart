import 'package:flutter/material.dart';

class WatchHistory extends StatelessWidget {
  const WatchHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Watch History"),
        centerTitle: false,
      ),
      body: Center(
        child: Text("Your Watch history will appear here"),
      ),
    );
  }
}
