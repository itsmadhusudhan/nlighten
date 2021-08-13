// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Playlist _$_$_PlaylistFromJson(Map<String, dynamic> json) {
  return _$_Playlist(
    id: json['id'] as int,
    title: json['title'] as String,
    videosList:
        (json['videos_list'] as List<dynamic>).map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$_$_PlaylistToJson(_$_Playlist instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'videos_list': instance.videosList,
    };
