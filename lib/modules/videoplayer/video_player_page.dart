import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:nlighten/modules/history/cubit/watch_history_cubit.dart';
import 'package:nlighten/modules/videoplayer/bloc/player/video_player_cubit.dart';
import 'package:nlighten/modules/videoplayer/video_player_view.dart';
import 'package:nlighten/modules/videoplayer/youtube_service.dart';

class VideoPlayerPage extends StatefulWidget {
  const VideoPlayerPage({Key? key}) : super(key: key);

  @override
  _VideoPlayerPageState createState() => _VideoPlayerPageState();
}

class _VideoPlayerPageState extends State<VideoPlayerPage> {
  late VideoPlayerCubit _videoPlayerCubit;

  late YoutubeService _youtubeService;

  late WatchHistoryCubit _watchHistoryCubit;

  @override
  void initState() {
    _videoPlayerCubit = context.read<VideoPlayerCubit>();

    _watchHistoryCubit = context.read<WatchHistoryCubit>();

    _youtubeService = YoutubeService(
      _videoPlayerCubit.state.selectedVideo!.id,
    );

    // playerExpandProgress.addListener(() {
    //   print(playerExpandProgress.value);

    //   if (playerExpandProgress.value <= minHeight + 100) {
    //     print("printing");

    //     _youtubeService.controller.fitWidth(Size(180, 100));

    //     _youtubeService.controller.fitHeight(Size(180, 100));
    //   } else {
    //     _youtubeService.controller.fitWidth(Size(180, 100));

    //     _youtubeService.controller.fitHeight(Size(180, 100));
    //   }
    // });

    super.initState();
  }

  // @override
  // void deactivate() {
  //   // Pauses video while navigating to next page.
  //   _youtubeService.pause();

  //   super.deactivate();
  // }

  @override
  void dispose() {
    print("disposing player...");

    if (_videoPlayerCubit.state.selectedVideo != null) {
      _youtubeService.pause();

      _watchHistoryCubit.saveToHistory(
        video: _videoPlayerCubit.state.selectedVideo!,
      );

      _videoPlayerCubit.clearPlayList();

      _youtubeService.dispose();
    }

    super.dispose();
  }

  // we are loading the selected videos here
  void _blocListener(BuildContext context, VideoPlayerState state) {
    if (state.selectedVideo != null) {
      _watchHistoryCubit.saveToHistory(
        video: _videoPlayerCubit.state.selectedVideo!,
      );

      _youtubeService.loadVideo(state.selectedVideo!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<VideoPlayerCubit, VideoPlayerState>(
      listenWhen: (oldState, newState) =>
          oldState.selectedVideo != newState.selectedVideo,
      listener: _blocListener,
      child: VideoPlayerView(youtubeService: _youtubeService),
    );
  }
}
