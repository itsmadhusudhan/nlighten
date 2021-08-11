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
                      ..putIfAbsent('categoryName', () => json['category'])
                      ..putIfAbsent(
                        'thumbnailUrl',
                        () =>
                            "https://img.youtube.com/vi/${json['id']}/hqdefault.jpg",
                      ),
                  ))
              .toList()
          : [];

      _list[key] = videos;
    }

    emit(VideoListState.success(_list));
  }

  loadAllVideos() async {
    final result = await _videoRepository
        .loadAllVideos('lib/assets/data/master_videos.json');

    print(result);
  }

  getVideos() async {
    final result = await _videoRepository.fetchVideosById([
      "x3rx70nwLi8",
      "WXid8nl5Xjs",
      "eH8bed9I094",
      "haRAlvYyKWg",
      "JSYXmGiCumU",
      "fslfCvRuXoE",
      "ufeiFgOEI5I",
      "43t5pkzrPHQ",
      "SDmxmRLN_CQ",
      "6B83N_JhPnU",
      "qtzl24Rlc28",
      "h3YcZXa764o",
      "BEZ61Yn4xJY",
      "gYAvg4iq9uE",
      "H1ii-77ggR0",
      "EbFSLJfZJa8",
      "lfun83ca-dE",
      "ZaQVqtNPTXA",
      "mahQC5T1OE0",
      "W0BaDhQlUWs",
      "9feOr6-1NSM",
      "SMRK52fbPDE",
      "YA5KlM-d_eg",
      "KXgq3uZA9ZE",
      "PovV7aKjtZI"
    ]);

    print(result);
  }
}
