import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'local_video.freezed.dart';
part 'local_video.g.dart';

@freezed
class LocalVideo with _$LocalVideo {
  @HiveType(typeId: 3, adapterName: 'LocalVideoAdapter')
  const factory LocalVideo({
    @HiveField(0) required String id,
    @HiveField(1) required String title,
    @HiveField(2) required String url,
    @HiveField(3) required String thumbnail,
    @HiveField(5) String? upload_date,
    @HiveField(6) int? duration,
    @HiveField(4) String? description,
    @HiveField(7) List<int>? playlists,
  }) = _LocalVideo;

  factory LocalVideo.fromJson(Map<String, dynamic> json) =>
      _$LocalVideoFromJson(json);
}
