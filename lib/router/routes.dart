class Routes {
  static const String root = "/";

  static const String homeRoute = "/home";

  static const String exploreRoute = "/home/explore";

  static const String historyRoute = "/home/histoy";

  static const String videoListRoute = "/videolist";

  static const String categoryListRoute = "/categorylist";

  static const String videoRoute = "/video";
}

class VideoPlayerArgumnets {
  final String url;

  VideoPlayerArgumnets(this.url);
}

class VideoCategoryArgumnets {
  final String categoryId;

  final String categoryTitle;

  VideoCategoryArgumnets({
    required this.categoryId,
    required this.categoryTitle,
  });
}
