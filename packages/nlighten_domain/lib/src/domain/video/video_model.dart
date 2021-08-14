import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_model.freezed.dart';
part 'video_model.g.dart';

@freezed
class VideoModel with _$VideoModel {
  const factory VideoModel({
    required String id,
    required String title,
    required String url,
    @JsonKey(name: "thumbnail") required String thumbnailUrl,
    // required String categoryId,
    // required String
    //     categoryName, // added this so that we dont have to search for it all the time
    String? description,
    DateTime? publishedOn, // might need to make this required later
    String? uploadDate,
    int? duration,
    List<int>? playlists,
  }) = _VideoModel;

  factory VideoModel.fromJson(Map<String, dynamic> json) =>
      _$VideoModelFromJson(json);
}
