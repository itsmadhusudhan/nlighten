// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_dao.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class VideoDaoAdapter extends TypeAdapter<_$_VideoDao> {
  @override
  final int typeId = 3;

  @override
  _$_VideoDao read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_VideoDao(
      id: fields[0] as String,
      title: fields[1] as String,
      url: fields[2] as String,
      thumbnail: fields[3] as String,
      uploadDate: fields[5] as String?,
      duration: fields[6] as int?,
      description: fields[4] as String?,
      playlists: (fields[7] as List?)?.cast<int>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$_VideoDao obj) {
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
      ..write(obj.uploadDate)
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
      other is VideoDaoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VideoDao _$_$_VideoDaoFromJson(Map<String, dynamic> json) {
  return _$_VideoDao(
    id: json['id'] as String,
    title: json['title'] as String,
    url: json['url'] as String,
    thumbnail: json['thumbnail'] as String,
    uploadDate: json['upload_date'] as String?,
    duration: json['duration'] as int?,
    description: json['description'] as String?,
    playlists:
        (json['playlists'] as List<dynamic>?)?.map((e) => e as int).toList(),
  );
}

Map<String, dynamic> _$_$_VideoDaoToJson(_$_VideoDao instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'url': instance.url,
      'thumbnail': instance.thumbnail,
      'upload_date': instance.uploadDate,
      'duration': instance.duration,
      'description': instance.description,
      'playlists': instance.playlists,
    };
