import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:nlighten_domain/nlighten_domain.dart';

class LocalVideoRepository implements VideoRepository {
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
}
