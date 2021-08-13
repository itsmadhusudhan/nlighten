// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'playlist_dao.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlaylistDao _$PlaylistDaoFromJson(Map<String, dynamic> json) {
  return _PlaylistDao.fromJson(json);
}

/// @nodoc
class _$PlaylistDaoTearOff {
  const _$PlaylistDaoTearOff();

  _PlaylistDao call(
      {@HiveField(0)
          required int id,
      @HiveField(1)
          required String title,
      @HiveField(2)
      @JsonKey(name: 'videos_list')
          required List<String> videosList,
      @HiveField(3)
          required String? imageUrl,
      @HiveField(4)
          String? description}) {
    return _PlaylistDao(
      id: id,
      title: title,
      videosList: videosList,
      imageUrl: imageUrl,
      description: description,
    );
  }

  PlaylistDao fromJson(Map<String, Object> json) {
    return PlaylistDao.fromJson(json);
  }
}

/// @nodoc
const $PlaylistDao = _$PlaylistDaoTearOff();

/// @nodoc
mixin _$PlaylistDao {
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get title => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: 'videos_list')
  List<String> get videosList => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get imageUrl => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaylistDaoCopyWith<PlaylistDao> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistDaoCopyWith<$Res> {
  factory $PlaylistDaoCopyWith(
          PlaylistDao value, $Res Function(PlaylistDao) then) =
      _$PlaylistDaoCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String title,
      @HiveField(2) @JsonKey(name: 'videos_list') List<String> videosList,
      @HiveField(3) String? imageUrl,
      @HiveField(4) String? description});
}

/// @nodoc
class _$PlaylistDaoCopyWithImpl<$Res> implements $PlaylistDaoCopyWith<$Res> {
  _$PlaylistDaoCopyWithImpl(this._value, this._then);

  final PlaylistDao _value;
  // ignore: unused_field
  final $Res Function(PlaylistDao) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? videosList = freezed,
    Object? imageUrl = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      videosList: videosList == freezed
          ? _value.videosList
          : videosList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PlaylistDaoCopyWith<$Res>
    implements $PlaylistDaoCopyWith<$Res> {
  factory _$PlaylistDaoCopyWith(
          _PlaylistDao value, $Res Function(_PlaylistDao) then) =
      __$PlaylistDaoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String title,
      @HiveField(2) @JsonKey(name: 'videos_list') List<String> videosList,
      @HiveField(3) String? imageUrl,
      @HiveField(4) String? description});
}

/// @nodoc
class __$PlaylistDaoCopyWithImpl<$Res> extends _$PlaylistDaoCopyWithImpl<$Res>
    implements _$PlaylistDaoCopyWith<$Res> {
  __$PlaylistDaoCopyWithImpl(
      _PlaylistDao _value, $Res Function(_PlaylistDao) _then)
      : super(_value, (v) => _then(v as _PlaylistDao));

  @override
  _PlaylistDao get _value => super._value as _PlaylistDao;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? videosList = freezed,
    Object? imageUrl = freezed,
    Object? description = freezed,
  }) {
    return _then(_PlaylistDao(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      videosList: videosList == freezed
          ? _value.videosList
          : videosList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 4, adapterName: 'PlaylistDaoAdapter')
class _$_PlaylistDao implements _PlaylistDao {
  const _$_PlaylistDao(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.title,
      @HiveField(2) @JsonKey(name: 'videos_list') required this.videosList,
      @HiveField(3) required this.imageUrl,
      @HiveField(4) this.description});

  factory _$_PlaylistDao.fromJson(Map<String, dynamic> json) =>
      _$_$_PlaylistDaoFromJson(json);

  @override
  @HiveField(0)
  final int id;
  @override
  @HiveField(1)
  final String title;
  @override
  @HiveField(2)
  @JsonKey(name: 'videos_list')
  final List<String> videosList;
  @override
  @HiveField(3)
  final String? imageUrl;
  @override
  @HiveField(4)
  final String? description;

  @override
  String toString() {
    return 'PlaylistDao(id: $id, title: $title, videosList: $videosList, imageUrl: $imageUrl, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlaylistDao &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.videosList, videosList) ||
                const DeepCollectionEquality()
                    .equals(other.videosList, videosList)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(videosList) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  _$PlaylistDaoCopyWith<_PlaylistDao> get copyWith =>
      __$PlaylistDaoCopyWithImpl<_PlaylistDao>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PlaylistDaoToJson(this);
  }
}

abstract class _PlaylistDao implements PlaylistDao {
  const factory _PlaylistDao(
      {@HiveField(0)
          required int id,
      @HiveField(1)
          required String title,
      @HiveField(2)
      @JsonKey(name: 'videos_list')
          required List<String> videosList,
      @HiveField(3)
          required String? imageUrl,
      @HiveField(4)
          String? description}) = _$_PlaylistDao;

  factory _PlaylistDao.fromJson(Map<String, dynamic> json) =
      _$_PlaylistDao.fromJson;

  @override
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  String get title => throw _privateConstructorUsedError;
  @override
  @HiveField(2)
  @JsonKey(name: 'videos_list')
  List<String> get videosList => throw _privateConstructorUsedError;
  @override
  @HiveField(3)
  String? get imageUrl => throw _privateConstructorUsedError;
  @override
  @HiveField(4)
  String? get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PlaylistDaoCopyWith<_PlaylistDao> get copyWith =>
      throw _privateConstructorUsedError;
}
