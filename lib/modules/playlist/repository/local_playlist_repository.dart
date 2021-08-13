import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:nlighten/constants.dart';
import 'package:nlighten/modules/playlist/domain/playlist_dao/playlist_dao.dart';
import 'package:nlighten/modules/playlist/repository/playlist_repository.dart';
import 'package:nlighten_domain/nlighten_domain.dart';

class LocalPlaylistRepository implements PlaylistRepository {
  final playlistBox = Hive.box<PlaylistDao>(Constants.PLAYLIST_BOX);

  final preferenceBox = Hive.box(Constants.PREFERENCE_BOX);

  @override
  Future<bool> loadAllPlaylists() async {
    try {
      final isSeeded =
          preferenceBox.get(Constants.PLAYLIST_SEEDED, defaultValue: false);

      if (!isSeeded) {
        print("Loading the playlist into DB");

        final response = await rootBundle.loadStructuredData(
            Constants.PLAYLIST_FILE_PATH,
            (result) async => List<dynamic>.from(json.decode(result))
                .map((e) => PlaylistDao.fromJson(e))
                .toList());

        response.forEach((element) async {
          await playlistBox.put(element.id, element);
        });

        await preferenceBox.put(Constants.PLAYLIST_SEEDED, true);
      }

      print("Loaded Playlists ${isSeeded.toString()}");

      return isSeeded;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<List<Playlist>> fetchAllPlaylists() async {
    try {
      final playlists =
          playlistBox.values.map<Playlist>((e) => e.toDomain()).toList();

      return playlists;
    } catch (e) {
      throw e;
    }
  }
}
