abstract class VideoRepository {
  Future<Map<String, dynamic>> fetchAllVideos(String filePath);

  Future<bool> loadAllVideos(String filePath);

  Future<List<dynamic>> fetchVideosById(List<String> videoIds);
}
