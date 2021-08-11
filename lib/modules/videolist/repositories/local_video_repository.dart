import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:nlighten/modules/videolist/repositories/local_video.dart';
import 'package:nlighten_domain/nlighten_domain.dart';

class LocalVideoRepository implements VideoRepository {
  final videoBox = Hive.box<LocalVideo>("videos");

  final preferenceBox = Hive.box("preference");

  @override
  Future<Map<String, dynamic>> fetchAllVideos(String filePath) async {
    try {
      final response = await rootBundle.loadStructuredData(filePath,
          (result) async => Map<String, dynamic>.from(json.decode(result)));

      return response;
    } catch (e) {
      throw e;
    }
  }

  loadAllVideos(String filePath) async {
    try {
      final isSeeded = preferenceBox.get('isSeeded', defaultValue: false);

      print("isSeeded: $isSeeded");

      // if (!isSeeded) {
      final response = await rootBundle.loadStructuredData(
          filePath,
          (result) async => List<dynamic>.from(json.decode(result))
              .map((e) => LocalVideo.fromJson(e))
              .toList());

      response.forEach((element) async {
        await videoBox.put(element.id, element);
      });

      await preferenceBox.put('isSeeded', true);

      return true;
      // }

      return false;
    } catch (e) {
      // throw e;

      print(e);

      return false;
    }
  }

  @override
  Future<List<LocalVideo?>> fetchVideosById(List<String> videoIds) async {
    try {
      final response = videoIds
          .map((id) {
            return videoBox.get(id);
          })
          .where((element) => element != null)
          .toList();

      return response;
    } catch (e) {
      throw e;
    }
  }
}
