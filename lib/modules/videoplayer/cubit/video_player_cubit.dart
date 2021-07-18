import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nlighten_domain/nlighten_domain.dart';

part 'video_player_state.dart';
part 'video_player_cubit.freezed.dart';

@Injectable()
class VideoPlayerCubit extends Cubit<VideoPlayerState> {
  VideoPlayerCubit() : super(VideoPlayerState.initial());

  playVideo(VideoModel video) {
    emit(state.copyWith(selectedVideo: video));
  }

  loadPlayList({
    required VideoModel video,
    required List<VideoModel> playlist,
  }) {
    emit(state.copyWith(selectedVideo: video, playlist: playlist));
  }

  clearPlayList() {
    emit(state.copyWith(selectedVideo: null, playlist: []));
  }
}
