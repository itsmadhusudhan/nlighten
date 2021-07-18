// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'video_player_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$VideoPlayerStateTearOff {
  const _$VideoPlayerStateTearOff();

  _VideoPlayerState call(
      {required bool isPlaying,
      required VideoModel? selectedVideo,
      required List<VideoModel> playlist}) {
    return _VideoPlayerState(
      isPlaying: isPlaying,
      selectedVideo: selectedVideo,
      playlist: playlist,
    );
  }
}

/// @nodoc
const $VideoPlayerState = _$VideoPlayerStateTearOff();

/// @nodoc
mixin _$VideoPlayerState {
  bool get isPlaying => throw _privateConstructorUsedError;
  VideoModel? get selectedVideo => throw _privateConstructorUsedError;
  List<VideoModel> get playlist => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VideoPlayerStateCopyWith<VideoPlayerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoPlayerStateCopyWith<$Res> {
  factory $VideoPlayerStateCopyWith(
          VideoPlayerState value, $Res Function(VideoPlayerState) then) =
      _$VideoPlayerStateCopyWithImpl<$Res>;
  $Res call(
      {bool isPlaying, VideoModel? selectedVideo, List<VideoModel> playlist});

  $VideoModelCopyWith<$Res>? get selectedVideo;
}

/// @nodoc
class _$VideoPlayerStateCopyWithImpl<$Res>
    implements $VideoPlayerStateCopyWith<$Res> {
  _$VideoPlayerStateCopyWithImpl(this._value, this._then);

  final VideoPlayerState _value;
  // ignore: unused_field
  final $Res Function(VideoPlayerState) _then;

  @override
  $Res call({
    Object? isPlaying = freezed,
    Object? selectedVideo = freezed,
    Object? playlist = freezed,
  }) {
    return _then(_value.copyWith(
      isPlaying: isPlaying == freezed
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedVideo: selectedVideo == freezed
          ? _value.selectedVideo
          : selectedVideo // ignore: cast_nullable_to_non_nullable
              as VideoModel?,
      playlist: playlist == freezed
          ? _value.playlist
          : playlist // ignore: cast_nullable_to_non_nullable
              as List<VideoModel>,
    ));
  }

  @override
  $VideoModelCopyWith<$Res>? get selectedVideo {
    if (_value.selectedVideo == null) {
      return null;
    }

    return $VideoModelCopyWith<$Res>(_value.selectedVideo!, (value) {
      return _then(_value.copyWith(selectedVideo: value));
    });
  }
}

/// @nodoc
abstract class _$VideoPlayerStateCopyWith<$Res>
    implements $VideoPlayerStateCopyWith<$Res> {
  factory _$VideoPlayerStateCopyWith(
          _VideoPlayerState value, $Res Function(_VideoPlayerState) then) =
      __$VideoPlayerStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isPlaying, VideoModel? selectedVideo, List<VideoModel> playlist});

  @override
  $VideoModelCopyWith<$Res>? get selectedVideo;
}

/// @nodoc
class __$VideoPlayerStateCopyWithImpl<$Res>
    extends _$VideoPlayerStateCopyWithImpl<$Res>
    implements _$VideoPlayerStateCopyWith<$Res> {
  __$VideoPlayerStateCopyWithImpl(
      _VideoPlayerState _value, $Res Function(_VideoPlayerState) _then)
      : super(_value, (v) => _then(v as _VideoPlayerState));

  @override
  _VideoPlayerState get _value => super._value as _VideoPlayerState;

  @override
  $Res call({
    Object? isPlaying = freezed,
    Object? selectedVideo = freezed,
    Object? playlist = freezed,
  }) {
    return _then(_VideoPlayerState(
      isPlaying: isPlaying == freezed
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedVideo: selectedVideo == freezed
          ? _value.selectedVideo
          : selectedVideo // ignore: cast_nullable_to_non_nullable
              as VideoModel?,
      playlist: playlist == freezed
          ? _value.playlist
          : playlist // ignore: cast_nullable_to_non_nullable
              as List<VideoModel>,
    ));
  }
}

/// @nodoc

class _$_VideoPlayerState implements _VideoPlayerState {
  const _$_VideoPlayerState(
      {required this.isPlaying,
      required this.selectedVideo,
      required this.playlist});

  @override
  final bool isPlaying;
  @override
  final VideoModel? selectedVideo;
  @override
  final List<VideoModel> playlist;

  @override
  String toString() {
    return 'VideoPlayerState(isPlaying: $isPlaying, selectedVideo: $selectedVideo, playlist: $playlist)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VideoPlayerState &&
            (identical(other.isPlaying, isPlaying) ||
                const DeepCollectionEquality()
                    .equals(other.isPlaying, isPlaying)) &&
            (identical(other.selectedVideo, selectedVideo) ||
                const DeepCollectionEquality()
                    .equals(other.selectedVideo, selectedVideo)) &&
            (identical(other.playlist, playlist) ||
                const DeepCollectionEquality()
                    .equals(other.playlist, playlist)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isPlaying) ^
      const DeepCollectionEquality().hash(selectedVideo) ^
      const DeepCollectionEquality().hash(playlist);

  @JsonKey(ignore: true)
  @override
  _$VideoPlayerStateCopyWith<_VideoPlayerState> get copyWith =>
      __$VideoPlayerStateCopyWithImpl<_VideoPlayerState>(this, _$identity);
}

abstract class _VideoPlayerState implements VideoPlayerState {
  const factory _VideoPlayerState(
      {required bool isPlaying,
      required VideoModel? selectedVideo,
      required List<VideoModel> playlist}) = _$_VideoPlayerState;

  @override
  bool get isPlaying => throw _privateConstructorUsedError;
  @override
  VideoModel? get selectedVideo => throw _privateConstructorUsedError;
  @override
  List<VideoModel> get playlist => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VideoPlayerStateCopyWith<_VideoPlayerState> get copyWith =>
      throw _privateConstructorUsedError;
}
