import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:nlighten_domain/nlighten_domain.dart';

class LocalCategoryRepository implements CategoryRepository {
  LocalCategoryRepository();

  @override
  Future<Map<String, dynamic>> fetchAllCategories(String filePath) async {
    try {
      final response = await rootBundle.loadStructuredData(filePath,
          (result) async => Map<String, dynamic>.from(json.decode(result)));

      return response;
    } catch (e) {
      throw e;
    }
  }
}
