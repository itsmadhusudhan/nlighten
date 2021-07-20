import 'package:hive/hive.dart';
import 'package:nlighten/modules/history/hive_watch_history.dart';
import 'package:nlighten/modules/history/repository/watch_history_respository.dart';
import 'package:nlighten_domain/nlighten_domain.dart';

/// this repository is implmented like this for now
class LocalWatchHistoryRepository implements WatchHistoryRepository {
  final historyBox = Hive.box<HiveWatchHistory>("watchhistory");

  @override
  Future<List<HiveWatchHistory>> fetchAllHistory() async {
    return historyBox.toMap().values.toList();
  }

  @override
  Future<void> saveToHistory(VideoModel video) async {
    HiveWatchHistory? historyModel = historyBox.get(video.id);

    if (historyModel == null) {
      historyModel = HiveWatchHistory(
        video: HiveVideoModel.fromJson(video.toJson()),
        dateHistory: [],
        recentDateTime: DateTime.now(),
      );
    } else {
      final _currentDate = DateTime.now();

      historyModel = historyModel.copyWith(
        recentDateTime: _currentDate,
        dateHistory: historyModel.dateHistory.isEmpty
            ? [_currentDate]
            : historyModel.dateHistory
          ..add(_currentDate),
      );
    }

    await historyBox.put(video.id, historyModel);
  }
}
