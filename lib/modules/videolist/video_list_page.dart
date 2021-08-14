import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:nlighten/modules/videolist/cubit/video_list_cubit.dart';
import 'package:nlighten/modules/videolist/widgets/video_list_tile.dart';
import 'package:nlighten/modules/videoplayer/bloc/bloc.dart';
import 'package:nlighten/router/routes.dart';
import 'package:nlighten_domain/nlighten_domain.dart';

class VideoListPage extends StatefulWidget {
  final int id;

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

  @override
  _VideoListPageState createState() => _VideoListPageState();
}

class _VideoListPageState extends State<VideoListPage> {
  Widget _successBuilder(List<VideoModel> videos) {
    if (videos == null || videos.isEmpty) {
      return Center(
        child: Text("No Videos Found"),
      );
    }

    return ListView.separated(
      separatorBuilder: (ctx, index) => Divider(
        color: Colors.black.withOpacity(0.5),
        indent: 12,
        endIndent: 12,
      ),
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final _video = videos[index];

        return VideoListTile(
          video: _video,
          onPressed: (id) {
            context
                .read<VideoPlayerCubit>()
                .loadPlayList(video: _video, playlist: videos);

            // Navigator.of(context, rootNavigator: true)
            //     .push(MaterialPageRoute(builder: (ctx) => VideoPlayerPage()));
          },
        );
      },
    );
  }

  @override
  void initState() {
    SchedulerBinding.instance?.addPostFrameCallback((timeStamp) {
      context.read<VideoListCubit>().getVideoByPlaylistId(widget.id);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
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
