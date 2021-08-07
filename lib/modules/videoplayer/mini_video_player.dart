import 'package:flutter/material.dart';
import 'package:miniplayer/miniplayer.dart';
import 'package:nlighten/modules/videoplayer/bloc/player/video_player_cubit.dart';
import 'package:nlighten/modules/videoplayer/utils.dart';
import 'package:nlighten/modules/videoplayer/video_player_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final MiniplayerController controller = MiniplayerController();

class MiniVideoPlayer extends StatefulWidget {
  MiniVideoPlayer({Key? key}) : super(key: key);

  @override
  _MiniVideoPlayerState createState() => _MiniVideoPlayerState();
}

class _MiniVideoPlayerState extends State<MiniVideoPlayer> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VideoPlayerCubit, VideoPlayerState>(
      builder: (context, state) {
        if (state.selectedVideo != null) {
          return Miniplayer(
            backgroundColor: Colors.teal,
            duration: Duration(milliseconds: 200),
            valueNotifier: playerExpandProgress,
            controller: controller,
            minHeight: minHeight,
            maxHeight: MediaQuery.of(context).size.height,
            curve: Curves.easeOut,
            onDismissed: () {},
            elevation: 6,
            builder: (height, percentage) {
              return VideoPlayerPage();
            },
          );
        }
        return SizedBox.shrink();
      },
    );
  }
}
