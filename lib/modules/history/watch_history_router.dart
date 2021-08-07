import 'package:flutter/material.dart';
import 'package:nlighten/modules/history/watch_history_page.dart';
import 'package:nlighten/router/routes.dart';

class WatchHistoryRouter {
  static String initialRoute = "/";

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    Widget _builder;

    bool? _fullscreenDialog;

    switch (settings.name) {
      case Routes.root:
        _builder = const WatchHistoryPage();
        break;

      default:
        _builder = const WatchHistoryPage();
    }

    return MaterialPageRoute(
      fullscreenDialog: _fullscreenDialog ?? false,
      builder: (_) => _builder,
      settings: settings,
      maintainState: true,
    );
  }
}
