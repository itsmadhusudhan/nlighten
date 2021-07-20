import 'package:nlighten/modules/history/hive_watch_history.dart';
import 'package:nlighten_domain/nlighten_domain.dart';

abstract class WatchHistoryRepository {
  Future<List<HiveWatchHistory>> fetchAllHistory();

  Future<void> saveToHistory(VideoModel video);
}
