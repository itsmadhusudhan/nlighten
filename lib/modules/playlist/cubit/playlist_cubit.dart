import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nlighten/modules/playlist/repository/playlist_repository.dart';
import 'package:nlighten_domain/nlighten_domain.dart';

part 'playlist_state.dart';
part 'playlist_cubit.freezed.dart';

@Injectable()
class PlaylistCubit extends Cubit<PlaylistState> {
  final PlaylistRepository _playlistRepository;

  PlaylistCubit(this._playlistRepository) : super(PlaylistState.initial());

  loadAllPlaylists() async {
    emit(PlaylistState.loading());

    final isLoaded = await _playlistRepository.loadAllPlaylists();

    if (isLoaded)
      this.getPlaylists();
    else
      emit(PlaylistState.success([]));
  }

  getPlaylists() async {
    try {
      emit(PlaylistState.loading());

      final playlists = await _playlistRepository.fetchAllPlaylists();

      // print(playlists);

      emit(PlaylistState.success(playlists));
    } catch (e) {
      emit(PlaylistState.error(message: e.toString()));
    }
  }
}
