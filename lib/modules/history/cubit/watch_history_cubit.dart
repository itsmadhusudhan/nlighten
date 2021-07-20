import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:nlighten/modules/history/hive_watch_history.dart';
import 'package:nlighten/modules/history/repository/watch_history_respository.dart';
import 'package:nlighten_domain/nlighten_domain.dart';

part 'watch_history_state.dart';
part 'watch_history_cubit.freezed.dart';

@Injectable()
class WatchHistoryCubit extends Cubit<WatchHistoryState> {
  final WatchHistoryRepository _watchHistoryRepository;

  WatchHistoryCubit(this._watchHistoryRepository)
      : super(WatchHistoryState.initial());

  saveToHistory({required VideoModel video}) async {
    try {
      await _watchHistoryRepository.saveToHistory(video);
    } catch (e) {
      print(e);
    }
  }

  getAllWatchHistory() async {
    try {
      emit(state.copyWith(isLoading: true));

      final _list = await _watchHistoryRepository.fetchAllHistory();

      final playlist = _list
          .map<WatchHistoryModel>((e) => e.toDomain())
          .toList()
            ..sort(
                (p, c) => p.recentDateTime.isBefore(c.recentDateTime) ? 1 : -1);

      emit(state.copyWith(playlist: playlist, isLoading: false));
    } catch (e) {
      print(e);
      emit(state.copyWith(isLoading: false));
    }
  }
}
