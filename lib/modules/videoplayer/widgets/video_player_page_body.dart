import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nlighten/modules/videoplayer/cubit/video_player_cubit.dart';
import 'package:nlighten/modules/videoplayer/widgets/video_playlist.dart';
import 'package:nlighten/modules/videoplayer/widgets/video_title.dart';

class VideoPlayerPageBody extends StatelessWidget {
  final Widget player;

  const VideoPlayerPageBody({Key? key, required this.player}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VideoPlayerCubit, VideoPlayerState>(
      builder: (ctx, state) {
        return Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              player,
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                child: VideoTitle(
                  title: state.selectedVideo!.title,
                  categoryName: state.selectedVideo!.categoryName,
                ),
              ),
              const VideoPlaylist(),
            ],
          ),
        );
      },
    );
  }
}
