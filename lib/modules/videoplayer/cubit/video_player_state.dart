part of 'video_player_cubit.dart';

@freezed
class VideoPlayerState with _$VideoPlayerState {
  const factory VideoPlayerState({
    required bool isPlaying,
    required VideoModel? selectedVideo,
    required List<VideoModel> playlist,
  }) = _VideoPlayerState;

  factory VideoPlayerState.initial() => VideoPlayerState(
        isPlaying: false,
        selectedVideo: null,
        playlist: [],
      );
}
