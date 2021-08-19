import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nlighten_domain/nlighten_domain.dart';

part 'video_list_state.dart';
part 'video_list_cubit.freezed.dart';

@Injectable()
class VideoListCubit extends Cubit<VideoListState> {
  final VideoRepository _videoRepository;

  VideoListCubit(this._videoRepository) : super(VideoListState.initial());

  loadAllVideos() async {
    try {
      final result = await _videoRepository.loadAllVideos();

      if (result) print("finished loading the videos");
    } catch (e) {
      print(e);
    }
  }

  getVideoByPlaylistId(int id) async {
    emit(VideoListState.loading());

    final videos = await _videoRepository.fetchVideosByPlaylistId(id);

    emit(VideoListState.success(videos));
  }
}
