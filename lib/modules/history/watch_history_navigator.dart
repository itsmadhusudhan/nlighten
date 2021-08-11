import 'package:flutter/material.dart';
import 'package:nlighten/modules/history/watch_history_router.dart';

final _historyNavigatorKey = GlobalKey<NavigatorState>();

class WatchHistoryNavigator extends StatelessWidget {
  const WatchHistoryNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: _historyNavigatorKey,
      onGenerateRoute: WatchHistoryRouter.onGenerateRoute,
      initialRoute: WatchHistoryRouter.initialRoute,
    );
  }
}
