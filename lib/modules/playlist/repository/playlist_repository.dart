import 'package:nlighten_domain/nlighten_domain.dart';

abstract class PlaylistRepository {
  Future<bool> loadAllPlaylists();

  Future<List<Playlist>> fetchAllPlaylists();
}
