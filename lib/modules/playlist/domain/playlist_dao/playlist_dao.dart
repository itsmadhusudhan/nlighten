import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:nlighten_domain/nlighten_domain.dart';

part 'playlist_dao.freezed.dart';
part 'playlist_dao.g.dart';

@freezed
class PlaylistDao with _$PlaylistDao {
  @HiveType(typeId: 4, adapterName: 'PlaylistDaoAdapter')
  const factory PlaylistDao({
    @HiveField(0) required int id,
    @HiveField(1) required String title,
    @HiveField(2)
    @JsonKey(name: 'videos_list')
        required List<String> videosList,
    @HiveField(3) required String? imageUrl,
    @HiveField(4) String? description,
  }) = _PlaylistDao;

  factory PlaylistDao.fromJson(Map<String, dynamic> json) =>
      _$PlaylistDaoFromJson(json);
}

extension PlaylistDaoX on PlaylistDao {
  toDomain() {
    return Playlist.fromJson(this.toJson());
  }
}
