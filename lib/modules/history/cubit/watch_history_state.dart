part of 'watch_history_cubit.dart';

@freezed
class WatchHistoryState with _$WatchHistoryState {
  const factory WatchHistoryState({
    required bool isLoading,
    required List<WatchHistoryModel> playlist,
  }) = _WatchHistoryState;

  factory WatchHistoryState.initial() => WatchHistoryState(
        isLoading: false,
        playlist: [],
      );
}
