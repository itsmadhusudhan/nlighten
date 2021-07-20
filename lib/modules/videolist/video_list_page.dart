import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:nlighten/modules/videolist/cubit/video_list_cubit.dart';
import 'package:nlighten/modules/videoplayer/cubit/video_player_cubit.dart';
import 'package:nlighten/modules/videoplayer/video_player_page.dart';
import 'package:nlighten/router/routes.dart';
import 'package:nlighten_domain/nlighten_domain.dart';

class VideoListPage extends StatelessWidget {
  final String id;

  final String title;

  const VideoListPage({Key? key, required this.id, required this.title})
      : super(key: key);

  static pushVideoListPageRoute(
    BuildContext context, {
    required String title,
    required String id,
  }) {
    Navigator.of(context).pushNamed(
      Routes.videoListRoute,
      arguments: VideoCategoryArgumnets(
        categoryId: id,
        categoryTitle: title,
      ),
    );
  }

  Widget _successBuilder(Map<String, List<VideoModel>> videosMap) {
    final videos = videosMap[id];

    if (videos == null || videos.isEmpty) {
      return Center(
        child: Text("No Videos Found"),
      );
    }

    return ListView.builder(
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final _video = videos[index];

        return ListTile(
          // leading: Image.network(
          //   _video.thumbnailUrl,
          //   fit: BoxFit.cover,
          // ),
          leading: Icon(Icons.personal_video),
          title: Text(_video.title),
          onTap: () {
            context
                .read<VideoPlayerCubit>()
                .loadPlayList(video: _video, playlist: videos);
            // context.read<VideoPlayerCubit>().playVideo(videos[index]);

            VideoPlayerPage.pushVideoListPageRoute(context);
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: false,
      ),
      body: BlocBuilder<VideoListCubit, VideoListState>(
        builder: (context, state) {
          return state.maybeWhen(
            success: (e) => _successBuilder(e),
            orElse: () => Center(
              child: CircularProgressIndicator(),
            ),
          );
        },
      ),
    );
  }
}
