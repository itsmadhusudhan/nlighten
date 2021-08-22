import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nlighten/modules/videoplayer/bloc/bloc.dart';
import 'package:nlighten/modules/videoplayer/utils.dart';
import 'package:nlighten/modules/videoplayer/widgets/widgets.dart';
import 'package:nlighten/modules/videoplayer/youtube_service.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlayerView extends StatelessWidget {
  final YoutubeService youtubeService;

  const VideoPlayerView({Key? key, required this.youtubeService})
      : super(key: key);

  handleAction({required BuildContext context, required String type}) {
    if (!youtubeService.isFullScreen && type == 'TOGGLE_FULLSCREEN') {
      Navigator.of(context).pop();
    }

    // need to toggle only if the player is full screen
    if (youtubeService.isFullScreen && type == 'TOGGLE_FULLSCREEN')
      youtubeService.controller.toggleFullScreenMode();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocListener<VideoPlayerCubit, VideoPlayerState>(
          listener: (context, state) {},
          child: ValueListenableBuilder<double>(
            valueListenable: playerExpandProgress,
            builder: (context, height, child) {
              return YoutubePlayerBuilder(
                player: YoutubePlayer(
                  controller: youtubeService.controller,
                  showVideoProgressIndicator: true,
                  actionsPadding: EdgeInsets.only(top: 0),
                  topActions: <Widget>[
                    // SizedBox(width: 4.0),
                    PlayerTopActions(
                        onAction: ({required String type}) =>
                            handleAction.call(context: context, type: type)),
                  ],
                ),
                builder: (ctx, player) => VideoPlayerPageBody(player: player),
              );
              // }
            },
          ),
        ),
      ),
    );
  }
}


   // if (isMinimised)
                //   Padding(
                //     padding: const EdgeInsets.only(left: 8, top: 8),
                //     child: Row(
                //       children: [
                //         Text(
                //           "Enlightenment is near",
                //           style: TextStyle(fontSize: 16),
                //           overflow: TextOverflow.ellipsis,
                //         ),
                //         InkWell(
                //           onTap: () {
                //             if (youtubeService.isPlaying)
                //               youtubeService.pause();
                //             else
                //               youtubeService.play();
                //           },
                //           child: Icon(
                //             youtubeService.isPlaying
                //                 ? Icons.pause
                //                 : Icons.play_arrow,
                //           ),
                //         ),
                //         IconButton(
                //           icon: Icon(Icons.close),
                //           onPressed: () {},
                //         ),
                //       ],
                //     ),
                //   )