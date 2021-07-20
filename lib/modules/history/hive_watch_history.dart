import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:nlighten_domain/nlighten_domain.dart';

part 'hive_watch_history.freezed.dart';
part 'hive_watch_history.g.dart';

@freezed
class HiveWatchHistory with _$HiveWatchHistory {
  @HiveType(typeId: 1, adapterName: 'HiveWatchHistoryAdapter')
  const factory HiveWatchHistory({
    @HiveField(0) required HiveVideoModel video,
    @HiveField(1) required DateTime recentDateTime,
    @HiveField(2) required List<DateTime> dateHistory,
  }) = _HiveWatchHistory;

  factory HiveWatchHistory.fromJson(Map<String, dynamic> json) =>
      _$HiveWatchHistoryFromJson(json);
}

@freezed
class HiveVideoModel with _$HiveVideoModel {
  @HiveType(typeId: 2, adapterName: 'HiveVideoModelAdapter')
  const factory HiveVideoModel({
    @HiveField(0) required String id,
    @HiveField(1) required String title,
    @HiveField(2) required String videoUrl,
    @HiveField(3) required String thumbnailUrl,
    @HiveField(4) required String categoryId,
    @HiveField(5) required String categoryName,
    @HiveField(6) String? description,
    @HiveField(7) DateTime? publishedOn,
  }) = _HiveVideoModel;

  factory HiveVideoModel.fromJson(Map<String, dynamic> json) =>
      _$HiveVideoModelFromJson(json);
}

extension HiveWatchHistoryX on HiveWatchHistory {
  WatchHistoryModel toDomain() {
    return WatchHistoryModel(
      video: VideoModel.fromJson(this.video.toJson()),
      dateHistory: this.dateHistory,
      recentDateTime: this.recentDateTime,
    );
  }
}
