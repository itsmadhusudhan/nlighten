import 'package:flutter/material.dart';
import 'package:nlighten_domain/nlighten_domain.dart';

class Routes {
  static final rootRouteObserver = RouteObserver<ModalRoute>();

  static const String root = "/";

  static const String homeRoute = "/home";

  static const String exploreRoute = "/home/explore";

  static const String historyRoute = "/home/histoy";

  static const String videoListRoute = "/videolist";

  static const String categoryListRoute = "/categorylist";

  static const String videoPlayerRoute = "/videoPlayer";
}

class VideoPlayerArgumnets {
  final VideoModel video;

  VideoPlayerArgumnets(this.video);
}

class VideoCategoryArgumnets {
  final String categoryId;

  final String categoryTitle;

  VideoCategoryArgumnets({
    required this.categoryId,
    required this.categoryTitle,
  });
}
