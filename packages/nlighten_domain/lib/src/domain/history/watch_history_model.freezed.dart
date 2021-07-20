// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'watch_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WatchHistoryModel _$WatchHistoryModelFromJson(Map<String, dynamic> json) {
  return _WatchHistoryModel.fromJson(json);
}

/// @nodoc
class _$WatchHistoryModelTearOff {
  const _$WatchHistoryModelTearOff();

  _WatchHistoryModel call(
      {required VideoModel video,
      required DateTime recentDateTime,
      required List<DateTime> dateHistory}) {
    return _WatchHistoryModel(
      video: video,
      recentDateTime: recentDateTime,
      dateHistory: dateHistory,
    );
  }

  WatchHistoryModel fromJson(Map<String, Object> json) {
    return WatchHistoryModel.fromJson(json);
  }
}

/// @nodoc
const $WatchHistoryModel = _$WatchHistoryModelTearOff();

/// @nodoc
mixin _$WatchHistoryModel {
  VideoModel get video => throw _privateConstructorUsedError;
  DateTime get recentDateTime => throw _privateConstructorUsedError;
  List<DateTime> get dateHistory => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WatchHistoryModelCopyWith<WatchHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WatchHistoryModelCopyWith<$Res> {
  factory $WatchHistoryModelCopyWith(
          WatchHistoryModel value, $Res Function(WatchHistoryModel) then) =
      _$WatchHistoryModelCopyWithImpl<$Res>;
  $Res call(
      {VideoModel video, DateTime recentDateTime, List<DateTime> dateHistory});

  $VideoModelCopyWith<$Res> get video;
}

/// @nodoc
class _$WatchHistoryModelCopyWithImpl<$Res>
    implements $WatchHistoryModelCopyWith<$Res> {
  _$WatchHistoryModelCopyWithImpl(this._value, this._then);

  final WatchHistoryModel _value;
  // ignore: unused_field
  final $Res Function(WatchHistoryModel) _then;

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
              as VideoModel,
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
  $VideoModelCopyWith<$Res> get video {
    return $VideoModelCopyWith<$Res>(_value.video, (value) {
      return _then(_value.copyWith(video: value));
    });
  }
}

/// @nodoc
abstract class _$WatchHistoryModelCopyWith<$Res>
    implements $WatchHistoryModelCopyWith<$Res> {
  factory _$WatchHistoryModelCopyWith(
          _WatchHistoryModel value, $Res Function(_WatchHistoryModel) then) =
      __$WatchHistoryModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {VideoModel video, DateTime recentDateTime, List<DateTime> dateHistory});

  @override
  $VideoModelCopyWith<$Res> get video;
}

/// @nodoc
class __$WatchHistoryModelCopyWithImpl<$Res>
    extends _$WatchHistoryModelCopyWithImpl<$Res>
    implements _$WatchHistoryModelCopyWith<$Res> {
  __$WatchHistoryModelCopyWithImpl(
      _WatchHistoryModel _value, $Res Function(_WatchHistoryModel) _then)
      : super(_value, (v) => _then(v as _WatchHistoryModel));

  @override
  _WatchHistoryModel get _value => super._value as _WatchHistoryModel;

  @override
  $Res call({
    Object? video = freezed,
    Object? recentDateTime = freezed,
    Object? dateHistory = freezed,
  }) {
    return _then(_WatchHistoryModel(
      video: video == freezed
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as VideoModel,
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
class _$_WatchHistoryModel implements _WatchHistoryModel {
  const _$_WatchHistoryModel(
      {required this.video,
      required this.recentDateTime,
      required this.dateHistory});

  factory _$_WatchHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$_$_WatchHistoryModelFromJson(json);

  @override
  final VideoModel video;
  @override
  final DateTime recentDateTime;
  @override
  final List<DateTime> dateHistory;

  @override
  String toString() {
    return 'WatchHistoryModel(video: $video, recentDateTime: $recentDateTime, dateHistory: $dateHistory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WatchHistoryModel &&
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
  _$WatchHistoryModelCopyWith<_WatchHistoryModel> get copyWith =>
      __$WatchHistoryModelCopyWithImpl<_WatchHistoryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WatchHistoryModelToJson(this);
  }
}

abstract class _WatchHistoryModel implements WatchHistoryModel {
  const factory _WatchHistoryModel(
      {required VideoModel video,
      required DateTime recentDateTime,
      required List<DateTime> dateHistory}) = _$_WatchHistoryModel;

  factory _WatchHistoryModel.fromJson(Map<String, dynamic> json) =
      _$_WatchHistoryModel.fromJson;

  @override
  VideoModel get video => throw _privateConstructorUsedError;
  @override
  DateTime get recentDateTime => throw _privateConstructorUsedError;
  @override
  List<DateTime> get dateHistory => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WatchHistoryModelCopyWith<_WatchHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
