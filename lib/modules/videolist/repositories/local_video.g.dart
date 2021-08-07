// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_video.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LocalVideoAdapter extends TypeAdapter<_$_LocalVideo> {
  @override
  final int typeId = 3;

  @override
  _$_LocalVideo read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_LocalVideo(
      id: fields[0] as String,
      title: fields[1] as String,
      url: fields[2] as String,
      thumbnail: fields[3] as String,
      upload_date: fields[5] as String?,
      duration: fields[6] as int?,
      description: fields[4] as String?,
      playlists: (fields[7] as List?)?.cast<int>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$_LocalVideo obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.url)
      ..writeByte(3)
      ..write(obj.thumbnail)
      ..writeByte(5)
      ..write(obj.upload_date)
      ..writeByte(6)
      ..write(obj.duration)
      ..writeByte(4)
      ..write(obj.description)
      ..writeByte(7)
      ..write(obj.playlists);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocalVideoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LocalVideo _$_$_LocalVideoFromJson(Map<String, dynamic> json) {
  return _$_LocalVideo(
    id: json['id'] as String,
    title: json['title'] as String,
    url: json['url'] as String,
    thumbnail: json['thumbnail'] as String,
    upload_date: json['upload_date'] as String?,
    duration: json['duration'] as int?,
    description: json['description'] as String?,
    playlists:
        (json['playlists'] as List<dynamic>?)?.map((e) => e as int).toList(),
  );
}

Map<String, dynamic> _$_$_LocalVideoToJson(_$_LocalVideo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'url': instance.url,
      'thumbnail': instance.thumbnail,
      'upload_date': instance.upload_date,
      'duration': instance.duration,
      'description': instance.description,
      'playlists': instance.playlists,
    };
