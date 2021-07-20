// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'watch_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WatchHistoryModel _$_$_WatchHistoryModelFromJson(Map<String, dynamic> json) {
  return _$_WatchHistoryModel(
    video: VideoModel.fromJson(json['video'] as Map<String, dynamic>),
    recentDateTime: DateTime.parse(json['recentDateTime'] as String),
    dateHistory: (json['dateHistory'] as List<dynamic>)
        .map((e) => DateTime.parse(e as String))
        .toList(),
  );
}

Map<String, dynamic> _$_$_WatchHistoryModelToJson(
        _$_WatchHistoryModel instance) =>
    <String, dynamic>{
      'video': instance.video,
      'recentDateTime': instance.recentDateTime.toIso8601String(),
      'dateHistory':
          instance.dateHistory.map((e) => e.toIso8601String()).toList(),
    };
