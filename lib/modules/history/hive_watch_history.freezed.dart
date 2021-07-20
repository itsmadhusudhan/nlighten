// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'hive_watch_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HiveWatchHistory _$HiveWatchHistoryFromJson(Map<String, dynamic> json) {
  return _HiveWatchHistory.fromJson(json);
}

/// @nodoc
class _$HiveWatchHistoryTearOff {
  const _$HiveWatchHistoryTearOff();

  _HiveWatchHistory call(
      {@HiveField(0) required HiveVideoModel video,
      @HiveField(1) required DateTime recentDateTime,
      @HiveField(2) required List<DateTime> dateHistory}) {
    return _HiveWatchHistory(
      video: video,
      recentDateTime: recentDateTime,
      dateHistory: dateHistory,
    );
  }

  HiveWatchHistory fromJson(Map<String, Object> json) {
    return HiveWatchHistory.fromJson(json);
  }
}

/// @nodoc
const $HiveWatchHistory = _$HiveWatchHistoryTearOff();

/// @nodoc
mixin _$HiveWatchHistory {
  @HiveField(0)
  HiveVideoModel get video => throw _privateConstructorUsedError;
  @HiveField(1)
  DateTime get recentDateTime => throw _privateConstructorUsedError;
  @HiveField(2)
  List<DateTime> get dateHistory => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HiveWatchHistoryCopyWith<HiveWatchHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HiveWatchHistoryCopyWith<$Res> {
  factory $HiveWatchHistoryCopyWith(
          HiveWatchHistory value, $Res Function(HiveWatchHistory) then) =
      _$HiveWatchHistoryCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) HiveVideoModel video,
      @HiveField(1) DateTime recentDateTime,
      @HiveField(2) List<DateTime> dateHistory});

  $HiveVideoModelCopyWith<$Res> get video;
}

/// @nodoc
class _$HiveWatchHistoryCopyWithImpl<$Res>
    implements $HiveWatchHistoryCopyWith<$Res> {
  _$HiveWatchHistoryCopyWithImpl(this._value, this._then);

  final HiveWatchHistory _value;
  // ignore: unused_field
  final $Res Function(HiveWatchHistory) _then;

  @override
  $Res call({
    Object? video = freezed,
    Object? recentDateTime = freezed,
    Object? dateHistory = freezed,
  }) {
    return _then(_value.copyWith(
      video: video == freezed
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as HiveVideoModel,
      recentDateTime: recentDateTime == freezed
          ? _value.recentDateTime
          : recentDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateHistory: dateHistory == freezed
          ? _value.dateHistory
          : dateHistory // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
    ));
  }

  @override
  $HiveVideoModelCopyWith<$Res> get video {
    return $HiveVideoModelCopyWith<$Res>(_value.video, (value) {
      return _then(_value.copyWith(video: value));
    });
  }
}

/// @nodoc
abstract class _$HiveWatchHistoryCopyWith<$Res>
    implements $HiveWatchHistoryCopyWith<$Res> {
  factory _$HiveWatchHistoryCopyWith(
          _HiveWatchHistory value, $Res Function(_HiveWatchHistory) then) =
      __$HiveWatchHistoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) HiveVideoModel video,
      @HiveField(1) DateTime recentDateTime,
      @HiveField(2) List<DateTime> dateHistory});

  @override
  $HiveVideoModelCopyWith<$Res> get video;
}

/// @nodoc
class __$HiveWatchHistoryCopyWithImpl<$Res>
    extends _$HiveWatchHistoryCopyWithImpl<$Res>
    implements _$HiveWatchHistoryCopyWith<$Res> {
  __$HiveWatchHistoryCopyWithImpl(
      _HiveWatchHistory _value, $Res Function(_HiveWatchHistory) _then)
      : super(_value, (v) => _then(v as _HiveWatchHistory));

  @override
  _HiveWatchHistory get _value => super._value as _HiveWatchHistory;

  @override
  $Res call({
    Object? video = freezed,
    Object? recentDateTime = freezed,
    Object? dateHistory = freezed,
  }) {
    return _then(_HiveWatchHistory(
      video: video == freezed
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as HiveVideoModel,
      recentDateTime: recentDateTime == freezed
          ? _value.recentDateTime
          : recentDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateHistory: dateHistory == freezed
          ? _value.dateHistory
          : dateHistory // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 1, adapterName: 'HiveWatchHistoryAdapter')
class _$_HiveWatchHistory implements _HiveWatchHistory {
  const _$_HiveWatchHistory(
      {@HiveField(0) required this.video,
      @HiveField(1) required this.recentDateTime,
      @HiveField(2) required this.dateHistory});

  factory _$_HiveWatchHistory.fromJson(Map<String, dynamic> json) =>
      _$_$_HiveWatchHistoryFromJson(json);

  @override
  @HiveField(0)
  final HiveVideoModel video;
  @override
  @HiveField(1)
  final DateTime recentDateTime;
  @override
  @HiveField(2)
  final List<DateTime> dateHistory;

  @override
  String toString() {
    return 'HiveWatchHistory(video: $video, recentDateTime: $recentDateTime, dateHistory: $dateHistory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HiveWatchHistory &&
            (identical(other.video, video) ||
                const DeepCollectionEquality().equals(other.video, video)) &&
            (identical(other.recentDateTime, recentDateTime) ||
                const DeepCollectionEquality()
                    .equals(other.recentDateTime, recentDateTime)) &&
            (identical(other.dateHistory, dateHistory) ||
                const DeepCollectionEquality()
                    .equals(other.dateHistory, dateHistory)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(video) ^
      const DeepCollectionEquality().hash(recentDateTime) ^
      const DeepCollectionEquality().hash(dateHistory);

  @JsonKey(ignore: true)
  @override
  _$HiveWatchHistoryCopyWith<_HiveWatchHistory> get copyWith =>
      __$HiveWatchHistoryCopyWithImpl<_HiveWatchHistory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_HiveWatchHistoryToJson(this);
  }
}

abstract class _HiveWatchHistory implements HiveWatchHistory {
  const factory _HiveWatchHistory(
      {@HiveField(0) required HiveVideoModel video,
      @HiveField(1) required DateTime recentDateTime,
      @HiveField(2) required List<DateTime> dateHistory}) = _$_HiveWatchHistory;

  factory _HiveWatchHistory.fromJson(Map<String, dynamic> json) =
      _$_HiveWatchHistory.fromJson;

  @override
  @HiveField(0)
  HiveVideoModel get video => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  DateTime get recentDateTime => throw _privateConstructorUsedError;
  @override
  @HiveField(2)
  List<DateTime> get dateHistory => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HiveWatchHistoryCopyWith<_HiveWatchHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

HiveVideoModel _$HiveVideoModelFromJson(Map<String, dynamic> json) {
  return _HiveVideoModel.fromJson(json);
}

/// @nodoc
class _$HiveVideoModelTearOff {
  const _$HiveVideoModelTearOff();

  _HiveVideoModel call(
      {@HiveField(0) required String id,
      @HiveField(1) required String title,
      @HiveField(2) required String videoUrl,
      @HiveField(3) required String thumbnailUrl,
      @HiveField(4) required String categoryId,
      @HiveField(5) required String categoryName,
      @HiveField(6) String? description,
      @HiveField(7) DateTime? publishedOn}) {
    return _HiveVideoModel(
      id: id,
      title: title,
      videoUrl: videoUrl,
      thumbnailUrl: thumbnailUrl,
      categoryId: categoryId,
      categoryName: categoryName,
      description: description,
      publishedOn: publishedOn,
    );
  }

  HiveVideoModel fromJson(Map<String, Object> json) {
    return HiveVideoModel.fromJson(json);
  }
}

/// @nodoc
const $HiveVideoModel = _$HiveVideoModelTearOff();

/// @nodoc
mixin _$HiveVideoModel {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get title => throw _privateConstructorUsedError;
  @HiveField(2)
  String get videoUrl => throw _privateConstructorUsedError;
  @HiveField(3)
  String get thumbnailUrl => throw _privateConstructorUsedError;
  @HiveField(4)
  String get categoryId => throw _privateConstructorUsedError;
  @HiveField(5)
  String get categoryName => throw _privateConstructorUsedError;
  @HiveField(6)
  String? get description => throw _privateConstructorUsedError;
  @HiveField(7)
  DateTime? get publishedOn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HiveVideoModelCopyWith<HiveVideoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HiveVideoModelCopyWith<$Res> {
  factory $HiveVideoModelCopyWith(
          HiveVideoModel value, $Res Function(HiveVideoModel) then) =
      _$HiveVideoModelCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String title,
      @HiveField(2) String videoUrl,
      @HiveField(3) String thumbnailUrl,
      @HiveField(4) String categoryId,
      @HiveField(5) String categoryName,
      @HiveField(6) String? description,
      @HiveField(7) DateTime? publishedOn});
}

/// @nodoc
class _$HiveVideoModelCopyWithImpl<$Res>
    implements $HiveVideoModelCopyWith<$Res> {
  _$HiveVideoModelCopyWithImpl(this._value, this._then);

  final HiveVideoModel _value;
  // ignore: unused_field
  final $Res Function(HiveVideoModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? videoUrl = freezed,
    Object? thumbnailUrl = freezed,
    Object? categoryId = freezed,
    Object? categoryName = freezed,
    Object? description = freezed,
    Object? publishedOn = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      videoUrl: videoUrl == freezed
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: thumbnailUrl == freezed
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      categoryName: categoryName == freezed
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      publishedOn: publishedOn == freezed
          ? _value.publishedOn
          : publishedOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$HiveVideoModelCopyWith<$Res>
    implements $HiveVideoModelCopyWith<$Res> {
  factory _$HiveVideoModelCopyWith(
          _HiveVideoModel value, $Res Function(_HiveVideoModel) then) =
      __$HiveVideoModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String title,
      @HiveField(2) String videoUrl,
      @HiveField(3) String thumbnailUrl,
      @HiveField(4) String categoryId,
      @HiveField(5) String categoryName,
      @HiveField(6) String? description,
      @HiveField(7) DateTime? publishedOn});
}

/// @nodoc
class __$HiveVideoModelCopyWithImpl<$Res>
    extends _$HiveVideoModelCopyWithImpl<$Res>
    implements _$HiveVideoModelCopyWith<$Res> {
  __$HiveVideoModelCopyWithImpl(
      _HiveVideoModel _value, $Res Function(_HiveVideoModel) _then)
      : super(_value, (v) => _then(v as _HiveVideoModel));

  @override
  _HiveVideoModel get _value => super._value as _HiveVideoModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? videoUrl = freezed,
    Object? thumbnailUrl = freezed,
    Object? categoryId = freezed,
    Object? categoryName = freezed,
    Object? description = freezed,
    Object? publishedOn = freezed,
  }) {
    return _then(_HiveVideoModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      videoUrl: videoUrl == freezed
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: thumbnailUrl == freezed
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      categoryName: categoryName == freezed
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      publishedOn: publishedOn == freezed
          ? _value.publishedOn
          : publishedOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 2, adapterName: 'HiveVideoModelAdapter')
class _$_HiveVideoModel implements _HiveVideoModel {
  const _$_HiveVideoModel(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.title,
      @HiveField(2) required this.videoUrl,
      @HiveField(3) required this.thumbnailUrl,
      @HiveField(4) required this.categoryId,
      @HiveField(5) required this.categoryName,
      @HiveField(6) this.description,
      @HiveField(7) this.publishedOn});

  factory _$_HiveVideoModel.fromJson(Map<String, dynamic> json) =>
      _$_$_HiveVideoModelFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final String title;
  @override
  @HiveField(2)
  final String videoUrl;
  @override
  @HiveField(3)
  final String thumbnailUrl;
  @override
  @HiveField(4)
  final String categoryId;
  @override
  @HiveField(5)
  final String categoryName;
  @override
  @HiveField(6)
  final String? description;
  @override
  @HiveField(7)
  final DateTime? publishedOn;

  @override
  String toString() {
    return 'HiveVideoModel(id: $id, title: $title, videoUrl: $videoUrl, thumbnailUrl: $thumbnailUrl, categoryId: $categoryId, categoryName: $categoryName, description: $description, publishedOn: $publishedOn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HiveVideoModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.videoUrl, videoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.videoUrl, videoUrl)) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                const DeepCollectionEquality()
                    .equals(other.thumbnailUrl, thumbnailUrl)) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)) &&
            (identical(other.categoryName, categoryName) ||
                const DeepCollectionEquality()
                    .equals(other.categoryName, categoryName)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.publishedOn, publishedOn) ||
                const DeepCollectionEquality()
                    .equals(other.publishedOn, publishedOn)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(videoUrl) ^
      const DeepCollectionEquality().hash(thumbnailUrl) ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(categoryName) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(publishedOn);

  @JsonKey(ignore: true)
  @override
  _$HiveVideoModelCopyWith<_HiveVideoModel> get copyWith =>
      __$HiveVideoModelCopyWithImpl<_HiveVideoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_HiveVideoModelToJson(this);
  }
}

abstract class _HiveVideoModel implements HiveVideoModel {
  const factory _HiveVideoModel(
      {@HiveField(0) required String id,
      @HiveField(1) required String title,
      @HiveField(2) required String videoUrl,
      @HiveField(3) required String thumbnailUrl,
      @HiveField(4) required String categoryId,
      @HiveField(5) required String categoryName,
      @HiveField(6) String? description,
      @HiveField(7) DateTime? publishedOn}) = _$_HiveVideoModel;

  factory _HiveVideoModel.fromJson(Map<String, dynamic> json) =
      _$_HiveVideoModel.fromJson;

  @override
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  String get title => throw _privateConstructorUsedError;
  @override
  @HiveField(2)
  String get videoUrl => throw _privateConstructorUsedError;
  @override
  @HiveField(3)
  String get thumbnailUrl => throw _privateConstructorUsedError;
  @override
  @HiveField(4)
  String get categoryId => throw _privateConstructorUsedError;
  @override
  @HiveField(5)
  String get categoryName => throw _privateConstructorUsedError;
  @override
  @HiveField(6)
  String? get description => throw _privateConstructorUsedError;
  @override
  @HiveField(7)
  DateTime? get publishedOn => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HiveVideoModelCopyWith<_HiveVideoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
