import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:nlighten_domain/nlighten_domain.dart';

part 'video_dao.freezed.dart';
part 'video_dao.g.dart';

@freezed
class VideoDao with _$VideoDao {
  @HiveType(typeId: 3, adapterName: 'VideoDaoAdapter')
  const factory VideoDao({
    @HiveField(0)
        required String id,
    @HiveField(1)
        required String title,
    @HiveField(2)
        required String url,
    @HiveField(3)
        required String thumbnail,
    @JsonKey(
      name: 'upload_date',
    )
    @HiveField(5)
        String? uploadDate,
    @HiveField(6)
        int? duration,
    @HiveField(4)
        String? description,
    @HiveField(7)
        List<int>? playlists,
  }) = _VideoDao;

  factory VideoDao.fromJson(Map<String, dynamic> json) =>
      _$VideoDaoFromJson(json);
}

extension VideoDaoX on VideoDao {
  toDomain() {
    return VideoModel.fromJson(this.toJson());
  }
}
