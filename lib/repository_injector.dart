import 'package:injectable/injectable.dart';
import 'package:nlighten/app_environments.dart';
import 'package:nlighten/modules/category/repository/local_category_repository.dart';
import 'package:nlighten/modules/history/repository/local_watch_history_repository.dart';
import 'package:nlighten/modules/history/repository/watch_history_respository.dart';
import 'package:nlighten/modules/playlist/repository/local_playlist_repository.dart';
import 'package:nlighten/modules/playlist/repository/playlist_repository.dart';
import 'package:nlighten/modules/videolist/repositories/local_video_repository.dart';
import 'package:nlighten_domain/nlighten_domain.dart';

@module
abstract class RepositoryInjector {
  @LazySingleton(env: [AppEnvironment.local])
  CategoryRepository get localCategoryRepository => LocalCategoryRepository();

  @LazySingleton(env: [AppEnvironment.local])
  VideoRepository get localVideoRepository => LocalVideoRepository();

  @LazySingleton(env: [AppEnvironment.local])
  WatchHistoryRepository get localWatchHistoryRepository =>
      LocalWatchHistoryRepository();

  @LazySingleton(env: [AppEnvironment.local])
  PlaylistRepository get localPlaylistRepository => LocalPlaylistRepository();
}
