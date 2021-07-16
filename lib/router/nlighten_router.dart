import 'package:flutter/material.dart';
import 'package:nlighten/modules/home/home_page.dart';
import 'package:nlighten/router/routes.dart';

class NLightenRouter {
  static String initialRoute = "/";

  static final rootRouteObserver = RouteObserver<ModalRoute>();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    Widget _builder;

    switch (settings.name) {
      case Routes.root:
        _builder = HomePage();
        break;

      default:
        _builder = HomePage();
    }

    return MaterialPageRoute(
      builder: (_) => _builder,
      settings: settings,
      maintainState: true,
    );
  }
}
