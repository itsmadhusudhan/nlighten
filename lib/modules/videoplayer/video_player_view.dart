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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<VideoPlayerCubit, VideoPlayerState>(
        listener: (context, state) {},
        child: ValueListenableBuilder<double>(
          valueListenable: playerExpandProgress,
          builder: (context, height, child) {
            final isMinimised = height <= minHeight + 100;

            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: isMinimised ? 0 : 1,
                  child: YoutubePlayerBuilder(
                    player: YoutubePlayer(
                      width:
                          isMinimised ? 100 : MediaQuery.of(context).size.width,
                      controller: youtubeService.controller,
                      showVideoProgressIndicator: true,
                      topActions: <Widget>[
                        // const SizedBox(width: 4.0),
                        // const PlayerTopActions(),
                      ],
                    ),
                    builder: (ctx, player) =>
                        VideoPlayerPageBody(player: player),
                  ),
                ),
                if (isMinimised)
                  Padding(
                    padding: const EdgeInsets.only(left: 8, top: 8),
                    child: Row(
                      children: [
                        // Text(
                        //   "Enlightenment is near",
                        //   style: TextStyle(fontSize: 16),
                        //   overflow: TextOverflow.ellipsis,
                        // ),
                        InkWell(
                          onTap: () {
                            if (youtubeService.isPlaying)
                              youtubeService.pause();
                            else
                              youtubeService.play();
                          },
                          child: Icon(
                            youtubeService.isPlaying
                                ? Icons.pause
                                : Icons.play_arrow,
                          ),
                        ),
                        TextButton(
                          child: Text("PLay"),
                          onPressed: () {
                            youtubeService.play();
                          },
                        ),
                        // IconButton(
                        //   color: Colors.deepOrange,
                        //   icon: Icon(youtubeService.isPlaying
                        //       ? Icons.pause
                        //       : Icons.play_arrow),
                        //   onPressed: () {},
                        // ),
                        IconButton(
                          icon: Icon(Icons.close),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  )
              ],
            );
            // }
          },
        ),
      ),
    );
  }
}
