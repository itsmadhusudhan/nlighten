// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VideoModel _$_$_VideoModelFromJson(Map<String, dynamic> json) {
  return _$_VideoModel(
    id: json['id'] as String,
    title: json['title'] as String,
    videoUrl: json['videoUrl'] as String,
    thumbnailUrl: json['thumbnailUrl'] as String,
    categoryId: json['categoryId'] as String,
    categoryName: json['categoryName'] as String,
    description: json['description'] as String?,
    publishedOn: json['publishedOn'] == null
        ? null
        : DateTime.parse(json['publishedOn'] as String),
  );
}

Map<String, dynamic> _$_$_VideoModelToJson(_$_VideoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'videoUrl': instance.videoUrl,
      'thumbnailUrl': instance.thumbnailUrl,
      'categoryId': instance.categoryId,
      'categoryName': instance.categoryName,
      'description': instance.description,
      'publishedOn': instance.publishedOn?.toIso8601String(),
    };
