import 'package:flutter/material.dart';
import 'package:nlighten/modules/category/category_list_page.dart';
import 'package:nlighten/modules/explore/explore_page.dart';
import 'package:nlighten/modules/playlist/playlist_page.dart';
import 'package:nlighten/modules/videolist/video_list_page.dart';
import 'package:nlighten/router/routes.dart';

class ExploreRouter {
  static String initialRoute = "/";

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    Widget _builder;

    bool? _fullscreenDialog;

    switch (settings.name) {
      case Routes.root:
        _builder = ExplorePage();
        break;

      case Routes.categoryListRoute:
        _builder = const CategoryListPage();
        break;

      case Routes.playlistRoute:
        _builder = const PlaylistPage();
        break;

      case Routes.videoListRoute:
        // ignore: cast_nullable_to_non_nullable
        final _arguments = settings.arguments as VideoPlaylistArgumnets;

        _builder = VideoListPage(
          id: _arguments.playlistId,
          title: _arguments.playlistTitle,
        );
        break;

      default:
        _builder = ExplorePage();
    }

    return MaterialPageRoute(
      fullscreenDialog: _fullscreenDialog ?? false,
      builder: (_) => _builder,
      settings: settings,
      maintainState: true,
    );
  }
}
