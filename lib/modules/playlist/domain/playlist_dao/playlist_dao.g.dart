// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlist_dao.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PlaylistDaoAdapter extends TypeAdapter<_$_PlaylistDao> {
  @override
  final int typeId = 4;

  @override
  _$_PlaylistDao read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_PlaylistDao(
      id: fields[0] as int,
      title: fields[1] as String,
      videosList: (fields[2] as List).cast<String>(),
      imageUrl: fields[3] as String?,
      description: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_PlaylistDao obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.videosList)
      ..writeByte(3)
      ..write(obj.imageUrl)
      ..writeByte(4)
      ..write(obj.description);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlaylistDaoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlaylistDao _$_$_PlaylistDaoFromJson(Map<String, dynamic> json) {
  return _$_PlaylistDao(
    id: json['id'] as int,
    title: json['title'] as String,
    videosList:
        (json['videos_list'] as List<dynamic>).map((e) => e as String).toList(),
    imageUrl: json['imageUrl'] as String?,
    description: json['description'] as String?,
  );
}

Map<String, dynamic> _$_$_PlaylistDaoToJson(_$_PlaylistDao instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'videos_list': instance.videosList,
      'imageUrl': instance.imageUrl,
      'description': instance.description,
    };
