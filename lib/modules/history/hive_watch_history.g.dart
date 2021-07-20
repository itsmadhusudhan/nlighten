// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_watch_history.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HiveWatchHistoryAdapter extends TypeAdapter<_$_HiveWatchHistory> {
  @override
  final int typeId = 1;

  @override
  _$_HiveWatchHistory read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_HiveWatchHistory(
      video: fields[0] as HiveVideoModel,
      recentDateTime: fields[1] as DateTime,
      dateHistory: (fields[2] as List).cast<DateTime>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$_HiveWatchHistory obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.video)
      ..writeByte(1)
      ..write(obj.recentDateTime)
      ..writeByte(2)
      ..write(obj.dateHistory);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveWatchHistoryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class HiveVideoModelAdapter extends TypeAdapter<_$_HiveVideoModel> {
  @override
  final int typeId = 2;

  @override
  _$_HiveVideoModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_HiveVideoModel(
      id: fields[0] as String,
      title: fields[1] as String,
      videoUrl: fields[2] as String,
      thumbnailUrl: fields[3] as String,
      categoryId: fields[4] as String,
      categoryName: fields[5] as String,
      description: fields[6] as String?,
      publishedOn: fields[7] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_HiveVideoModel obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.videoUrl)
      ..writeByte(3)
      ..write(obj.thumbnailUrl)
      ..writeByte(4)
      ..write(obj.categoryId)
      ..writeByte(5)
      ..write(obj.categoryName)
      ..writeByte(6)
      ..write(obj.description)
      ..writeByte(7)
      ..write(obj.publishedOn);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveVideoModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HiveWatchHistory _$_$_HiveWatchHistoryFromJson(Map<String, dynamic> json) {
  return _$_HiveWatchHistory(
    video: HiveVideoModel.fromJson(json['video'] as Map<String, dynamic>),
    recentDateTime: DateTime.parse(json['recentDateTime'] as String),
    dateHistory: (json['dateHistory'] as List<dynamic>)
        .map((e) => DateTime.parse(e as String))
        .toList(),
  );
}

Map<String, dynamic> _$_$_HiveWatchHistoryToJson(
        _$_HiveWatchHistory instance) =>
    <String, dynamic>{
      'video': instance.video,
      'recentDateTime': instance.recentDateTime.toIso8601String(),
      'dateHistory':
          instance.dateHistory.map((e) => e.toIso8601String()).toList(),
    };

_$_HiveVideoModel _$_$_HiveVideoModelFromJson(Map<String, dynamic> json) {
  return _$_HiveVideoModel(
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

Map<String, dynamic> _$_$_HiveVideoModelToJson(_$_HiveVideoModel instance) =>
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
