import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:nlighten/constants.dart';
import 'package:nlighten/modules/playlist/domain/playlist_dao/playlist_dao.dart';
import 'package:nlighten/modules/videolist/domain/video_dao.dart';
import 'package:nlighten_domain/nlighten_domain.dart';

class LocalVideoRepository implements VideoRepository {
  final videosBox = Hive.box<VideoDao>(Constants.VIDEO_BOX);

  final playlistBox = Hive.box<PlaylistDao>(Constants.PLAYLIST_BOX);

  final preferenceBox = Hive.box(Constants.PREFERENCE_BOX);

  @override
  Future<bool> loadAllVideos() async {
    try {
      final isSeeded =
          preferenceBox.get(Constants.VIDEOS_SEEDED, defaultValue: false);

      if (!isSeeded) {
        final response = await rootBundle.loadStructuredData(
            Constants.VIDEOS_FILE_PATH,
            (result) async => List<dynamic>.from(json.decode(result))
                .map((e) => VideoDao.fromJson(e))
                .toList());

        response.forEach((element) async {
          await videosBox.put(element.id, element);
        });

        // since it is the first run make the videos seeded true
        await preferenceBox.put(Constants.VIDEOS_SEEDED, true);

        return true;
      }

      return false;
    } catch (e) {
      print(e);

      return false;
    }
  }

  Future<List<VideoModel>> _fetchVideosById(List<String> videoIds) async {
    return videoIds
        .map((id) => videosBox.get(id))
        .where((element) => element != null)
        .map<VideoModel>((e) => e!.toDomain())
        .toList();
  }

  @override
  Future<List<VideoModel>> fetchVideosByPlaylistId(int id, {int? limit}) async {
    try {
      final _playlist = playlistBox.get(id);

      if (_playlist != null) {
        final videoIds = _playlist.videosList;

        final videos = await _fetchVideosById(
            limit == null ? videoIds : videoIds.take(limit).toList());

        return videos;
      } else {
        throw Exception("Playlist doesn't Exist");
      }
    } catch (e) {
      throw e;
    }
  }

  @override
  Future<List<VideoModel>> fetchExploreVideos() async {
    final playlist = playlistBox.values.take(3).toList();

    playlist[0].videosList.take(5);

    return [];
  }
}
