abstract class VideoRepository {
  Future<Map<String, dynamic>> fetchAllVideos(String filePath);
}
