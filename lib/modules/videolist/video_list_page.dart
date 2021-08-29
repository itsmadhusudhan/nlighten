import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:nlighten/modules/videolist/cubit/video_list_cubit.dart';
import 'package:nlighten/modules/videolist/widgets/video_list_tile.dart';
import 'package:nlighten/modules/videoplayer/bloc/bloc.dart';
import 'package:nlighten/modules/videoplayer/video_player_page.dart';
import 'package:nlighten/router/routes.dart';
import 'package:nlighten_domain/nlighten_domain.dart';
import 'package:nlighten_ui/nlighten_ui.dart';

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

    return BlocBuilder<VideoPlayerCubit, VideoPlayerState>(
      builder: (context, state) {
        // return NestedScrollView(
        //   floatHeaderSlivers: true,
        //   headerSliverBuilder: (ctx, _) {
        //     return [
        //       SliverToBoxAdapter(
        //         child: buildHeader(context, videos),
        //       )
        //     ];
        //   },
        //   body: renderVideoList(videos, state),
        // );

        return newMethod(context, videos, state);
      },
    );
  }

  CustomScrollView newMethod(
      BuildContext context, List<VideoModel> videos, VideoPlayerState state) {
    return CustomScrollView(
      controller: _controller,
      shrinkWrap: true,
      physics: AlwaysScrollableScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: buildHeader(context, videos),
        ),
        // SliverPersistentHeader(
        //   pinned: true,
        //   floating: true,
        //   delegate: AppHeaderDelegate(
        //     hmaxExtent: maxHeight,
        //     hminExtent: minHeight,
        //     title: widget.title,
        //     count: videos.length,
        //   ),
        // ),
        SliverPadding(
          padding: EdgeInsets.symmetric(vertical: 20),
          sliver: renderList(videos, state),
        ),
      ],
    );
  }

  Container buildHeader(BuildContext context, List<VideoModel> videos) {
    return Container(
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top, left: 20, bottom: 20),
      color: UIColors.gray,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: Navigator.of(context).pop,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Row(
                children: [
                  Icon(Icons.arrow_back_ios),
                  Text("Back"),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Text(
                widget.title,
                style: TextStyle(
                  color: UIColors.matrix,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                softWrap: true,
              )
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: UIColors.matrix,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
              ),
            ),
            child: Text(
              "${videos.length} Videos",
              style: TextStyle(color: UIColors.white),
            ),
          )
        ],
      ),
    );
  }

  renderVideoList(List<VideoModel> videos, VideoPlayerState state) {
    return ListView.builder(
      itemCount: videos.length,
      itemBuilder: (context, index) {
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
    );
  }

  SliverList renderList(List<VideoModel> videos, VideoPlayerState state) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          final _video = videos[index];

          return VideoListTile(
            isSelected: _video.id == state.selectedVideo,
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
