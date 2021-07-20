import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:nlighten/modules/history/cubit/watch_history_cubit.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:nlighten/modules/videoplayer/cubit/video_player_cubit.dart';
import 'package:nlighten/router/routes.dart';
import 'widgets/widgets.dart';

class VideoPlayerPage extends StatefulWidget {
  const VideoPlayerPage({
    Key? key,
  }) : super(key: key);

  static pushVideoListPageRoute(BuildContext context) {
    Navigator.of(context).pushNamed(Routes.videoPlayerRoute);
  }

  @override
  _VideoPlayerPageState createState() => _VideoPlayerPageState();
}

class _VideoPlayerPageState extends State<VideoPlayerPage> with RouteAware {
  late YoutubePlayerController _controller;

  late VideoPlayerCubit _videoPlayerCubit;

  late WatchHistoryCubit _watchHistoryCubit;

  @override
  void didChangeDependencies() {
    Routes.rootRouteObserver.subscribe(this, ModalRoute.of(context)!);

    super.didChangeDependencies();
  }

  @override
  void initState() {
    _videoPlayerCubit = context.read<VideoPlayerCubit>();

    _watchHistoryCubit = context.read<WatchHistoryCubit>();

    _controller = YoutubePlayerController(
      initialVideoId: _videoPlayerCubit.state.selectedVideo!.id,
      flags: YoutubePlayerFlags(
        autoPlay: true,
        enableCaption: false,
      ),
    );

    super.initState();
  }

  @override
  void deactivate() {
    // Pauses video while navigating to next page.
    _controller.pause();

    super.deactivate();
  }

  @override
  void dispose() {
    _watchHistoryCubit.saveToHistory(
      video: _videoPlayerCubit.state.selectedVideo!,
    );

    _videoPlayerCubit.clearPlayList();

    _controller.dispose();

    Routes.rootRouteObserver.unsubscribe(this);

    super.dispose();
  }

  @override
  void didPush() {
    context.read<WatchHistoryCubit>().saveToHistory(
          video: context.read<VideoPlayerCubit>().state.selectedVideo!,
        );

    super.didPush();
  }

  void _blocListener(context, state) {
    final _videoId = state.selectedVideo!.id;

    final _previousVideoId = _controller.metadata.videoId;

    if (_videoId != _previousVideoId) {
      _controller.load(state.selectedVideo!.id as String);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: BlocListener<VideoPlayerCubit, VideoPlayerState>(
        listener: _blocListener,
        child: YoutubePlayerBuilder(
          player: YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
            topActions: <Widget>[
              const SizedBox(width: 4.0),
              const PlayerTopActions(),
            ],
          ),
          builder: (ctx, player) => VideoPlayerPageBody(player: player),
        ),
      ),
    );
  }
}
