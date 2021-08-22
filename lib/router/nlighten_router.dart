import 'package:flutter/material.dart';
import 'package:nlighten/modules/home/home_page.dart';
import 'package:nlighten/modules/videoplayer/video_player_page.dart';
import 'package:nlighten/router/routes.dart';
import 'package:nlighten/splash_page.dart';

// ignore: avoid_classes_with_only_static_members
class NLightenRouter {
  static String initialRoute = "/";

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    Widget _builder;

    bool? _fullscreenDialog;

    switch (settings.name) {
      // the splash page will send us to the home page
      case Routes.root:
        _builder = SplashPage();
        break;

      // our immediate page after the splash page
      case Routes.homeRoute:
        _builder = const HomePage();
        break;

      case Routes.videoPlayerRoute:
        _builder = const VideoPlayerPage();
        break;

      default:
        _builder = HomePage();
    }

    return MaterialPageRoute(
      fullscreenDialog: _fullscreenDialog ?? false,
      builder: (_) => _builder,
      settings: settings,
      maintainState: true,
    );
  }
}
