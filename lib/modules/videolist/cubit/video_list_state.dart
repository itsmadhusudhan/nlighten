part of 'video_list_cubit.dart';

@freezed
class VideoListState with _$VideoListState {
  factory VideoListState.initial() = _VideoListStateInitial;

  factory VideoListState.loading() = _VideoListStateLoading;

  factory VideoListState.error({required String message}) =
      _VideoListStateError;

  factory VideoListState.success(List<VideoModel> videos) =
      _VideoListStateSuccess;
}
