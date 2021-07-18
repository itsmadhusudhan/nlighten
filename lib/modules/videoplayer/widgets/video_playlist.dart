import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nlighten/modules/videoplayer/cubit/video_player_cubit.dart';

class VideoPlaylist extends StatelessWidget {
  const VideoPlaylist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VideoPlayerCubit, VideoPlayerState>(
      builder: (ctx, state) {
        final _selectedVideo = state.selectedVideo!;

        final _playlist = state.playlist;

        return Expanded(
          child: ListView.builder(
            itemCount: _playlist.length,
            itemBuilder: (ctx, index) {
              final video = _playlist[index];

              return ListTile(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                selected: _selectedVideo.id == video.id,
                leading: Image.network(
                  video.thumbnailUrl,
                  fit: BoxFit.cover,
                  // loadingBuilder: (ctx, widget, e) => Text("Loading"),
                ),
                onTap: () {
                  context.read<VideoPlayerCubit>().playVideo(video);
                },
                title: Text(video.title),
                subtitle: Text(video.categoryName),
              );
            },
          ),
        );
      },
    );
  }
}
