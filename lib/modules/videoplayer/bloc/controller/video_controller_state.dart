part of 'video_controller_bloc.dart';

@freezed
class VideoControllerState with _$VideoControllerState {
  const factory VideoControllerState({
    required YoutubeService youtubeService,
  }) = _VideoPlayerState;

  factory VideoControllerState.initial(YoutubeService youtubeService) =>
      VideoControllerState(youtubeService: youtubeService);
}
