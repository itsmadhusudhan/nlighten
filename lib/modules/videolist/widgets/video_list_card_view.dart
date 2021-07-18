import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:nlighten/modules/category/widgets/title_row.dart';
import 'package:nlighten/modules/videolist/cubit/video_list_cubit.dart';
import 'package:nlighten/modules/videolist/video_list_page.dart';
import 'package:nlighten/modules/videolist/widgets/video_list_card.dart';
import 'package:nlighten/modules/videoplayer/cubit/video_player_cubit.dart';
import 'package:nlighten/modules/videoplayer/video_player_page.dart';
import 'package:nlighten_domain/nlighten_domain.dart';

class VideoListCardView extends StatelessWidget {
  final String title;

  final String id;

  const VideoListCardView({
    Key? key,
    required this.title,
    required this.id,
  }) : super(key: key);

  Widget _successBuilder(Map<String, List<VideoModel>> videosMap) {
    final videos = videosMap[id] ?? [];

    if (videos.isEmpty) {
      return Center(
        child: Text("No Videos Found"),
      );
    }

    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 6, // FIXME: limit the count to 4/5 later
        itemBuilder: (context, index) => VideoListCard(
          video: videos[index],
          onPressed: (id) {
            // context.read<VideoPlayerCubit>().playVideo(videos[index]);

            context
                .read<VideoPlayerCubit>()
                .loadPlayList(video: videos[index], playlist: videos);

            VideoPlayerPage.pushVideoListPageRoute(context,
                video: videos[index]);
          },
        ),
      ),
    );
  }

  Padding newMethod(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12, top: 8, bottom: 12),
      child: TitleRow(
        title: title,
        actionText: "See All",
        onPressed: () {
          VideoListPage.pushVideoListPageRoute(
            context,
            id: id,
            title: title,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VideoListCubit, VideoListState>(
      builder: (context, state) {
        return Column(
          children: [
            newMethod(context),
            state.maybeWhen(
              orElse: () => Center(
                child: CircularProgressIndicator(),
              ),
              success: _successBuilder,
            ),
          ],
        );
      },
    );
  }
}
