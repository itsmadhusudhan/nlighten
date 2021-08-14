// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'video_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VideoModel _$VideoModelFromJson(Map<String, dynamic> json) {
  return _VideoModel.fromJson(json);
}

/// @nodoc
class _$VideoModelTearOff {
  const _$VideoModelTearOff();

  _VideoModel call(
      {required String id,
      required String title,
      required String url,
      @JsonKey(name: "thumbnail") required String thumbnailUrl,
      String? description,
      DateTime? publishedOn,
      String? uploadDate,
      int? duration,
      List<int>? playlists}) {
    return _VideoModel(
      id: id,
      title: title,
      url: url,
      thumbnailUrl: thumbnailUrl,
      description: description,
      publishedOn: publishedOn,
      uploadDate: uploadDate,
      duration: duration,
      playlists: playlists,
    );
  }

  VideoModel fromJson(Map<String, Object> json) {
    return VideoModel.fromJson(json);
  }
}

/// @nodoc
const $VideoModel = _$VideoModelTearOff();

/// @nodoc
mixin _$VideoModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: "thumbnail")
  String get thumbnailUrl =>
      throw _privateConstructorUsedError; // required String categoryId,
// required String
//     categoryName, // added this so that we dont have to search for it all the time
  String? get description => throw _privateConstructorUsedError;
  DateTime? get publishedOn =>
      throw _privateConstructorUsedError; // might need to make this required later
  String? get uploadDate => throw _privateConstructorUsedError;
  int? get duration => throw _privateConstructorUsedError;
  List<int>? get playlists => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoModelCopyWith<VideoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoModelCopyWith<$Res> {
  factory $VideoModelCopyWith(
          VideoModel value, $Res Function(VideoModel) then) =
      _$VideoModelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      String url,
      @JsonKey(name: "thumbnail") String thumbnailUrl,
      String? description,
      DateTime? publishedOn,
      String? uploadDate,
      int? duration,
      List<int>? playlists});
}

/// @nodoc
class _$VideoModelCopyWithImpl<$Res> implements $VideoModelCopyWith<$Res> {
  _$VideoModelCopyWithImpl(this._value, this._then);

  final VideoModel _value;
  // ignore: unused_field
  final $Res Function(VideoModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? url = freezed,
    Object? thumbnailUrl = freezed,
    Object? description = freezed,
    Object? publishedOn = freezed,
    Object? uploadDate = freezed,
    Object? duration = freezed,
    Object? playlists = freezed,
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
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: thumbnailUrl == freezed
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      publishedOn: publishedOn == freezed
          ? _value.publishedOn
          : publishedOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      uploadDate: uploadDate == freezed
          ? _value.uploadDate
          : uploadDate // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      playlists: playlists == freezed
          ? _value.playlists
          : playlists // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
abstract class _$VideoModelCopyWith<$Res> implements $VideoModelCopyWith<$Res> {
  factory _$VideoModelCopyWith(
          _VideoModel value, $Res Function(_VideoModel) then) =
      __$VideoModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      String url,
      @JsonKey(name: "thumbnail") String thumbnailUrl,
      String? description,
      DateTime? publishedOn,
      String? uploadDate,
      int? duration,
      List<int>? playlists});
}

/// @nodoc
class __$VideoModelCopyWithImpl<$Res> extends _$VideoModelCopyWithImpl<$Res>
    implements _$VideoModelCopyWith<$Res> {
  __$VideoModelCopyWithImpl(
      _VideoModel _value, $Res Function(_VideoModel) _then)
      : super(_value, (v) => _then(v as _VideoModel));

  @override
  _VideoModel get _value => super._value as _VideoModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? url = freezed,
    Object? thumbnailUrl = freezed,
    Object? description = freezed,
    Object? publishedOn = freezed,
    Object? uploadDate = freezed,
    Object? duration = freezed,
    Object? playlists = freezed,
  }) {
    return _then(_VideoModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: thumbnailUrl == freezed
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      publishedOn: publishedOn == freezed
          ? _value.publishedOn
          : publishedOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      uploadDate: uploadDate == freezed
          ? _value.uploadDate
          : uploadDate // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      playlists: playlists == freezed
          ? _value.playlists
          : playlists // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VideoModel implements _VideoModel {
  const _$_VideoModel(
      {required this.id,
      required this.title,
      required this.url,
      @JsonKey(name: "thumbnail") required this.thumbnailUrl,
      this.description,
      this.publishedOn,
      this.uploadDate,
      this.duration,
      this.playlists});

  factory _$_VideoModel.fromJson(Map<String, dynamic> json) =>
      _$_$_VideoModelFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String url;
  @override
  @JsonKey(name: "thumbnail")
  final String thumbnailUrl;
  @override // required String categoryId,
// required String
//     categoryName, // added this so that we dont have to search for it all the time
  final String? description;
  @override
  final DateTime? publishedOn;
  @override // might need to make this required later
  final String? uploadDate;
  @override
  final int? duration;
  @override
  final List<int>? playlists;

  @override
  String toString() {
    return 'VideoModel(id: $id, title: $title, url: $url, thumbnailUrl: $thumbnailUrl, description: $description, publishedOn: $publishedOn, uploadDate: $uploadDate, duration: $duration, playlists: $playlists)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VideoModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                const DeepCollectionEquality()
                    .equals(other.thumbnailUrl, thumbnailUrl)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.publishedOn, publishedOn) ||
                const DeepCollectionEquality()
                    .equals(other.publishedOn, publishedOn)) &&
            (identical(other.uploadDate, uploadDate) ||
                const DeepCollectionEquality()
                    .equals(other.uploadDate, uploadDate)) &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)) &&
            (identical(other.playlists, playlists) ||
                const DeepCollectionEquality()
                    .equals(other.playlists, playlists)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(thumbnailUrl) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(publishedOn) ^
      const DeepCollectionEquality().hash(uploadDate) ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(playlists);

  @JsonKey(ignore: true)
  @override
  _$VideoModelCopyWith<_VideoModel> get copyWith =>
      __$VideoModelCopyWithImpl<_VideoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_VideoModelToJson(this);
  }
}

abstract class _VideoModel implements VideoModel {
  const factory _VideoModel(
      {required String id,
      required String title,
      required String url,
      @JsonKey(name: "thumbnail") required String thumbnailUrl,
      String? description,
      DateTime? publishedOn,
      String? uploadDate,
      int? duration,
      List<int>? playlists}) = _$_VideoModel;

  factory _VideoModel.fromJson(Map<String, dynamic> json) =
      _$_VideoModel.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "thumbnail")
  String get thumbnailUrl => throw _privateConstructorUsedError;
  @override // required String categoryId,
// required String
//     categoryName, // added this so that we dont have to search for it all the time
  String? get description => throw _privateConstructorUsedError;
  @override
  DateTime? get publishedOn => throw _privateConstructorUsedError;
  @override // might need to make this required later
  String? get uploadDate => throw _privateConstructorUsedError;
  @override
  int? get duration => throw _privateConstructorUsedError;
  @override
  List<int>? get playlists => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VideoModelCopyWith<_VideoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
