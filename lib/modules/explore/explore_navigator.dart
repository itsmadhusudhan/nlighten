import 'package:flutter/material.dart';
import 'package:nlighten/modules/explore/explore_router.dart';

final _exploreNavigatorKey = GlobalKey<NavigatorState>();

class ExploreNavigator extends StatelessWidget {
  const ExploreNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (_exploreNavigatorKey.currentState!.canPop()) {
          // Navigator.pop(context);
          _exploreNavigatorKey.currentState!.pop();
          return false;
        }

        return true;
      },
      child: Navigator(
        key: _exploreNavigatorKey,
        onGenerateRoute: ExploreRouter.onGenerateRoute,
        initialRoute: ExploreRouter.initialRoute,
      ),
    );
  }
}
