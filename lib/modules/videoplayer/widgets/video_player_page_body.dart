import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nlighten/modules/videoplayer/bloc/bloc.dart';
import 'package:nlighten/modules/videoplayer/utils.dart';
import 'package:nlighten/modules/videoplayer/widgets/video_playlist.dart';
import 'package:nlighten/modules/videoplayer/widgets/video_title.dart';

class VideoPlayerPageBody extends StatelessWidget {
  final Widget player;

  const VideoPlayerPageBody({Key? key, required this.player}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VideoPlayerCubit, VideoPlayerState>(
      builder: (ctx, state) {
        return ValueListenableBuilder<double>(
          valueListenable: playerExpandProgress,
          builder: (context, height, child) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                player,
                if (height >= minHeight + 100)
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 20),
                    child: VideoTitle(
                      title: state.selectedVideo!.title,
                      categoryName: "state.selectedVideo!.categoryName",
                    ),
                  ),
                if (height >= minHeight + 100) const VideoPlaylist(),
              ],
            );
          },
        );
      },
    );
  }
}
