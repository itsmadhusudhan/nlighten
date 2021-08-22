import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:nlighten/modules/videolist/cubit/video_list_cubit.dart';
import 'package:nlighten/modules/videolist/widgets/video_list_tile.dart';
import 'package:nlighten/modules/videoplayer/bloc/bloc.dart';
import 'package:nlighten/modules/videoplayer/video_player_page.dart';
import 'package:nlighten/modules/videoplayer/widgets/app_header_delegate.dart';
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
  final _controller = ScrollController();

  double get maxHeight => 150 + MediaQuery.of(context).padding.top;

  double get minHeight => kToolbarHeight + MediaQuery.of(context).padding.top;

  bool isEmpty = false;

  Widget _successBuilder(List<VideoModel> videos) {
    if (videos.isEmpty) {
      return Center(
        child: Text("No Videos Found"),
      );
    }

    return CustomScrollView(
      controller: _controller,
      shrinkWrap: true,
      physics: AlwaysScrollableScrollPhysics(),
      slivers: [
        SliverPersistentHeader(
          pinned: true,
          floating: true,
          delegate: AppHeaderDelegate(
            hmaxExtent: maxHeight,
            hminExtent: minHeight,
            title: widget.title,
            count: videos.length,
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(vertical: 20),
          sliver: renderList(videos),
        ),
      ],
    );
  }

  SliverList renderList(List<VideoModel> videos) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          final _video = videos[index];

          return VideoListTile(
            video: _video,
            onPressed: (id) {
              context
                  .read<VideoPlayerCubit>()
                  .loadPlayList(video: _video, playlist: videos);

              VideoPlayerPage.pushVidepPlayerPageRoute(context);
            },
          );
        },
        childCount: videos.length,
        addAutomaticKeepAlives: true,
      ),
    );
  }

  @override
  void initState() {
    // we are querying for the videos in the playlist using the id
    SchedulerBinding.instance?.addPostFrameCallback((timeStamp) {
      context.read<VideoListCubit>().getVideoByPlaylistId(widget.id);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<VideoListCubit, VideoListState>(
        builder: (context, state) {
          return state.maybeWhen(
            success: (e) => _successBuilder(e),
            orElse: () => Center(child: CircularProgressIndicator()),
          );
        },
      ),
    );
  }
}
