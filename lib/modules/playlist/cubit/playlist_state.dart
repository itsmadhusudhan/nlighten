part of 'playlist_cubit.dart';

@freezed
abstract class PlaylistState with _$PlaylistState {
  factory PlaylistState.initial() = _PlaylistStateInitial;

  factory PlaylistState.loading() = _PlaylistStateLoading;

  factory PlaylistState.error({required String message}) = _PlaylistStateError;

  factory PlaylistState.success(
    List<Playlist> playlists,
  ) = _PlaylistStateSuccess;
}
