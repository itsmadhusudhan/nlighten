import 'package:flutter/material.dart';
import 'package:nlighten/modules/explore/explore_router.dart';

final _exploreNavigatorKey = GlobalKey<NavigatorState>();

class ExploreNavigator extends StatelessWidget {
  const ExploreNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: _exploreNavigatorKey,
      onGenerateRoute: ExploreRouter.onGenerateRoute,
      initialRoute: ExploreRouter.initialRoute,
    );
  }
}