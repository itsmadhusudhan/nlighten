import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nlighten_domain/nlighten_domain.dart';

part 'watch_history_model.freezed.dart';
part 'watch_history_model.g.dart';

@freezed
class WatchHistoryModel with _$WatchHistoryModel {
  const factory WatchHistoryModel({
    required VideoModel video,
    required DateTime recentDateTime,
    required List<DateTime> dateHistory,
  }) = _WatchHistoryModel;

  factory WatchHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$WatchHistoryModelFromJson(json);
}
