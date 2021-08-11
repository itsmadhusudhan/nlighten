// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_preference.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HivePreferenceAdapter extends TypeAdapter<_$_HivePreference> {
  @override
  final int typeId = 4;

  @override
  _$_HivePreference read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_HivePreference(
      isSeeded: fields[0] as bool?,
      isFirstTime: fields[1] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_HivePreference obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.isSeeded)
      ..writeByte(1)
      ..write(obj.isFirstTime);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HivePreferenceAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HivePreference _$_$_HivePreferenceFromJson(Map<String, dynamic> json) {
  return _$_HivePreference(
    isSeeded: json['isSeeded'] as bool?,
    isFirstTime: json['isFirstTime'] as bool?,
  );
}

Map<String, dynamic> _$_$_HivePreferenceToJson(_$_HivePreference instance) =>
    <String, dynamic>{
      'isSeeded': instance.isSeeded,
      'isFirstTime': instance.isFirstTime,
    };
