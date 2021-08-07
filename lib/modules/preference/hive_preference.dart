import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'hive_preference.freezed.dart';
part 'hive_preference.g.dart';

@freezed
class HivePreference with _$HivePreference {
  @HiveType(typeId: 4, adapterName: 'HivePreferenceAdapter')
  const factory HivePreference({
    @HiveField(0) bool? isSeeded,
    @HiveField(1) bool? isFirstTime,
  }) = _HivePreference;

  factory HivePreference.fromJson(Map<String, dynamic> json) =>
      _$HivePreferenceFromJson(json);
}
