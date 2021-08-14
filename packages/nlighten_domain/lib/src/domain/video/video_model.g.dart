// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VideoModel _$_$_VideoModelFromJson(Map<String, dynamic> json) {
  return _$_VideoModel(
    id: json['id'] as String,
    title: json['title'] as String,
    url: json['url'] as String,
    thumbnailUrl: json['thumbnail'] as String,
    description: json['description'] as String?,
    publishedOn: json['publishedOn'] == null
        ? null
        : DateTime.parse(json['publishedOn'] as String),
    uploadDate: json['uploadDate'] as String?,
    duration: json['duration'] as int?,
    playlists:
        (json['playlists'] as List<dynamic>?)?.map((e) => e as int).toList(),
  );
}

Map<String, dynamic> _$_$_VideoModelToJson(_$_VideoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'url': instance.url,
      'thumbnail': instance.thumbnailUrl,
      'description': instance.description,
      'publishedOn': instance.publishedOn?.toIso8601String(),
      'uploadDate': instance.uploadDate,
      'duration': instance.duration,
      'playlists': instance.playlists,
    };
