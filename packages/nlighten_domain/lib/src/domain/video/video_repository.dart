import 'package:nlighten_domain/nlighten_domain.dart';

abstract class VideoRepository {
  Future<bool> loadAllVideos();

  Future<List<VideoModel>> fetchVideosByPlaylistId(int id, {int? limit});

  Future<List<VideoModel>> fetchExploreVideos();
}
