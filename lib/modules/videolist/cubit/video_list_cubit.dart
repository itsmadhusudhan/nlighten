import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nlighten/app_environments.dart';
import 'package:nlighten_domain/nlighten_domain.dart';

part 'video_list_state.dart';
part 'video_list_cubit.freezed.dart';

@Injectable(env: [AppEnvironment.local])
class VideoListCubit extends Cubit<VideoListState> {
  final VideoRepository _videoRepository;

  VideoListCubit(this._videoRepository) : super(VideoListState.initial());

  getAllVideos() async {
    emit(VideoListState.loading());

    final result =
        await _videoRepository.fetchAllVideos('lib/assets/data/videos.json');

    final Map<String, List<VideoModel>> _list = {};

    for (final key in result.keys) {
      final videos = result[key] != null
          ? result[key]
              .map<VideoModel>((json) => VideoModel.fromJson(
                    json
                      ..putIfAbsent('categoryId', () => key)
                      ..putIfAbsent('thumbnailUrl', () => ''),
                  ))
              .toList()
          : [];

      _list[key] = videos;
    }

    emit(VideoListState.success(_list));
  }
}
