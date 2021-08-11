import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:nlighten/modules/history/cubit/watch_history_cubit.dart';
import 'package:nlighten/modules/videolist/widgets/video_list_tile.dart';
import 'package:nlighten/modules/videoplayer/bloc/bloc.dart';
import 'package:nlighten/modules/videoplayer/video_player_page.dart';
import 'package:nlighten/router/routes.dart';

class WatchHistoryPage extends StatefulWidget {
  const WatchHistoryPage({Key? key}) : super(key: key);

  @override
  _WatchHistoryPageState createState() => _WatchHistoryPageState();
}

class _WatchHistoryPageState extends State<WatchHistoryPage> with RouteAware {
  late WatchHistoryCubit _watchHistoryCubit;

  @override
  void initState() {
    _watchHistoryCubit = context.read<WatchHistoryCubit>();

    super.initState();
  }

  @override
  void didChangeDependencies() {
    Routes.rootRouteObserver.subscribe(this, ModalRoute.of(context)!);

    _watchHistoryCubit.getAllWatchHistory();

    super.didChangeDependencies();
  }

  @override
  void didPush() {
    _watchHistoryCubit.getAllWatchHistory();

    super.didPush();
  }

  @override
  void dispose() {
    Routes.rootRouteObserver.unsubscribe(this);

    super.dispose();
  }

  @override
  void didPopNext() {
    _watchHistoryCubit.getAllWatchHistory();

    super.didPopNext();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Watch History"),
        centerTitle: false,
      ),
      body: BlocBuilder<WatchHistoryCubit, WatchHistoryState>(
        builder: (context, state) {
          final playlist = state.playlist;

          if (state.isLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          if (playlist.isEmpty) {
            return Center(
              child: Text("Your Watch history will appear here"),
            );
          }

          return ListView.builder(
              itemCount: playlist.length,
              itemBuilder: (ctx, index) {
                final history = playlist[index];

                return VideoListTile(
                  video: history.video,
                  onPressed: (id) {
                    context.read<VideoPlayerCubit>().loadPlayList(
                          video: history.video,
                          playlist: playlist.map((e) => e.video).toList(),
                        );
                  },
                );
              });
        },
      ),
    );
  }
}
