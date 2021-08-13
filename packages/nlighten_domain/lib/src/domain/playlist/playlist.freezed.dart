// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'playlist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Playlist _$PlaylistFromJson(Map<String, dynamic> json) {
  return _Playlist.fromJson(json);
}

/// @nodoc
class _$PlaylistTearOff {
  const _$PlaylistTearOff();

  _Playlist call(
      {required int id,
      required String title,
      @JsonKey(name: 'videos_list') required List<String> videosList}) {
    return _Playlist(
      id: id,
      title: title,
      videosList: videosList,
    );
  }

  Playlist fromJson(Map<String, Object> json) {
    return Playlist.fromJson(json);
  }
}

/// @nodoc
const $Playlist = _$PlaylistTearOff();

/// @nodoc
mixin _$Playlist {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'videos_list')
  List<String> get videosList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaylistCopyWith<Playlist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistCopyWith<$Res> {
  factory $PlaylistCopyWith(Playlist value, $Res Function(Playlist) then) =
      _$PlaylistCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String title,
      @JsonKey(name: 'videos_list') List<String> videosList});
}

/// @nodoc
class _$PlaylistCopyWithImpl<$Res> implements $PlaylistCopyWith<$Res> {
  _$PlaylistCopyWithImpl(this._value, this._then);

  final Playlist _value;
  // ignore: unused_field
  final $Res Function(Playlist) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? videosList = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$PlaylistCopyWith<$Res> implements $PlaylistCopyWith<$Res> {
  factory _$PlaylistCopyWith(_Playlist value, $Res Function(_Playlist) then) =
      __$PlaylistCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String title,
      @JsonKey(name: 'videos_list') List<String> videosList});
}

/// @nodoc
class __$PlaylistCopyWithImpl<$Res> extends _$PlaylistCopyWithImpl<$Res>
    implements _$PlaylistCopyWith<$Res> {
  __$PlaylistCopyWithImpl(_Playlist _value, $Res Function(_Playlist) _then)
      : super(_value, (v) => _then(v as _Playlist));

  @override
  _Playlist get _value => super._value as _Playlist;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? videosList = freezed,
  }) {
    return _then(_Playlist(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Playlist implements _Playlist {
  const _$_Playlist(
      {required this.id,
      required this.title,
      @JsonKey(name: 'videos_list') required this.videosList});

  factory _$_Playlist.fromJson(Map<String, dynamic> json) =>
      _$_$_PlaylistFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  @JsonKey(name: 'videos_list')
  final List<String> videosList;

  @override
  String toString() {
    return 'Playlist(id: $id, title: $title, videosList: $videosList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Playlist &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.videosList, videosList) ||
                const DeepCollectionEquality()
                    .equals(other.videosList, videosList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(videosList);

  @JsonKey(ignore: true)
  @override
  _$PlaylistCopyWith<_Playlist> get copyWith =>
      __$PlaylistCopyWithImpl<_Playlist>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PlaylistToJson(this);
  }
}

abstract class _Playlist implements Playlist {
  const factory _Playlist(
          {required int id,
          required String title,
          @JsonKey(name: 'videos_list') required List<String> videosList}) =
      _$_Playlist;

  factory _Playlist.fromJson(Map<String, dynamic> json) = _$_Playlist.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'videos_list')
  List<String> get videosList => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PlaylistCopyWith<_Playlist> get copyWith =>
      throw _privateConstructorUsedError;
}
