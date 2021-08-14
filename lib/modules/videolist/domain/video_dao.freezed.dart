// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'video_dao.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VideoDao _$VideoDaoFromJson(Map<String, dynamic> json) {
  return _VideoDao.fromJson(json);
}

/// @nodoc
class _$VideoDaoTearOff {
  const _$VideoDaoTearOff();

  _VideoDao call(
      {@HiveField(0) required String id,
      @HiveField(1) required String title,
      @HiveField(2) required String url,
      @HiveField(3) required String thumbnail,
      @JsonKey(name: 'upload_date') @HiveField(5) String? uploadDate,
      @HiveField(6) int? duration,
      @HiveField(4) String? description,
      @HiveField(7) List<int>? playlists}) {
    return _VideoDao(
      id: id,
      title: title,
      url: url,
      thumbnail: thumbnail,
      uploadDate: uploadDate,
      duration: duration,
      description: description,
      playlists: playlists,
    );
  }

  VideoDao fromJson(Map<String, Object> json) {
    return VideoDao.fromJson(json);
  }
}

/// @nodoc
const $VideoDao = _$VideoDaoTearOff();

/// @nodoc
mixin _$VideoDao {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get title => throw _privateConstructorUsedError;
  @HiveField(2)
  String get url => throw _privateConstructorUsedError;
  @HiveField(3)
  String get thumbnail => throw _privateConstructorUsedError;
  @JsonKey(name: 'upload_date')
  @HiveField(5)
  String? get uploadDate => throw _privateConstructorUsedError;
  @HiveField(6)
  int? get duration => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get description => throw _privateConstructorUsedError;
  @HiveField(7)
  List<int>? get playlists => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoDaoCopyWith<VideoDao> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoDaoCopyWith<$Res> {
  factory $VideoDaoCopyWith(VideoDao value, $Res Function(VideoDao) then) =
      _$VideoDaoCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String title,
      @HiveField(2) String url,
      @HiveField(3) String thumbnail,
      @JsonKey(name: 'upload_date') @HiveField(5) String? uploadDate,
      @HiveField(6) int? duration,
      @HiveField(4) String? description,
      @HiveField(7) List<int>? playlists});
}

/// @nodoc
class _$VideoDaoCopyWithImpl<$Res> implements $VideoDaoCopyWith<$Res> {
  _$VideoDaoCopyWithImpl(this._value, this._then);

  final VideoDao _value;
  // ignore: unused_field
  final $Res Function(VideoDao) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? url = freezed,
    Object? thumbnail = freezed,
    Object? uploadDate = freezed,
    Object? duration = freezed,
    Object? description = freezed,
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
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      uploadDate: uploadDate == freezed
          ? _value.uploadDate
          : uploadDate // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      playlists: playlists == freezed
          ? _value.playlists
          : playlists // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
abstract class _$VideoDaoCopyWith<$Res> implements $VideoDaoCopyWith<$Res> {
  factory _$VideoDaoCopyWith(_VideoDao value, $Res Function(_VideoDao) then) =
      __$VideoDaoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String title,
      @HiveField(2) String url,
      @HiveField(3) String thumbnail,
      @JsonKey(name: 'upload_date') @HiveField(5) String? uploadDate,
      @HiveField(6) int? duration,
      @HiveField(4) String? description,
      @HiveField(7) List<int>? playlists});
}

/// @nodoc
class __$VideoDaoCopyWithImpl<$Res> extends _$VideoDaoCopyWithImpl<$Res>
    implements _$VideoDaoCopyWith<$Res> {
  __$VideoDaoCopyWithImpl(_VideoDao _value, $Res Function(_VideoDao) _then)
      : super(_value, (v) => _then(v as _VideoDao));

  @override
  _VideoDao get _value => super._value as _VideoDao;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? url = freezed,
    Object? thumbnail = freezed,
    Object? uploadDate = freezed,
    Object? duration = freezed,
    Object? description = freezed,
    Object? playlists = freezed,
  }) {
    return _then(_VideoDao(
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
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      uploadDate: uploadDate == freezed
          ? _value.uploadDate
          : uploadDate // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      playlists: playlists == freezed
          ? _value.playlists
          : playlists // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 3, adapterName: 'VideoDaoAdapter')
class _$_VideoDao implements _VideoDao {
  const _$_VideoDao(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.title,
      @HiveField(2) required this.url,
      @HiveField(3) required this.thumbnail,
      @JsonKey(name: 'upload_date') @HiveField(5) this.uploadDate,
      @HiveField(6) this.duration,
      @HiveField(4) this.description,
      @HiveField(7) this.playlists});

  factory _$_VideoDao.fromJson(Map<String, dynamic> json) =>
      _$_$_VideoDaoFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final String title;
  @override
  @HiveField(2)
  final String url;
  @override
  @HiveField(3)
  final String thumbnail;
  @override
  @JsonKey(name: 'upload_date')
  @HiveField(5)
  final String? uploadDate;
  @override
  @HiveField(6)
  final int? duration;
  @override
  @HiveField(4)
  final String? description;
  @override
  @HiveField(7)
  final List<int>? playlists;

  @override
  String toString() {
    return 'VideoDao(id: $id, title: $title, url: $url, thumbnail: $thumbnail, uploadDate: $uploadDate, duration: $duration, description: $description, playlists: $playlists)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VideoDao &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.thumbnail, thumbnail) ||
                const DeepCollectionEquality()
                    .equals(other.thumbnail, thumbnail)) &&
            (identical(other.uploadDate, uploadDate) ||
                const DeepCollectionEquality()
                    .equals(other.uploadDate, uploadDate)) &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
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
      const DeepCollectionEquality().hash(thumbnail) ^
      const DeepCollectionEquality().hash(uploadDate) ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(playlists);

  @JsonKey(ignore: true)
  @override
  _$VideoDaoCopyWith<_VideoDao> get copyWith =>
      __$VideoDaoCopyWithImpl<_VideoDao>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_VideoDaoToJson(this);
  }
}

abstract class _VideoDao implements VideoDao {
  const factory _VideoDao(
      {@HiveField(0) required String id,
      @HiveField(1) required String title,
      @HiveField(2) required String url,
      @HiveField(3) required String thumbnail,
      @JsonKey(name: 'upload_date') @HiveField(5) String? uploadDate,
      @HiveField(6) int? duration,
      @HiveField(4) String? description,
      @HiveField(7) List<int>? playlists}) = _$_VideoDao;

  factory _VideoDao.fromJson(Map<String, dynamic> json) = _$_VideoDao.fromJson;

  @override
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  String get title => throw _privateConstructorUsedError;
  @override
  @HiveField(2)
  String get url => throw _privateConstructorUsedError;
  @override
  @HiveField(3)
  String get thumbnail => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'upload_date')
  @HiveField(5)
  String? get uploadDate => throw _privateConstructorUsedError;
  @override
  @HiveField(6)
  int? get duration => throw _privateConstructorUsedError;
  @override
  @HiveField(4)
  String? get description => throw _privateConstructorUsedError;
  @override
  @HiveField(7)
  List<int>? get playlists => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VideoDaoCopyWith<_VideoDao> get copyWith =>
      throw _privateConstructorUsedError;
}
