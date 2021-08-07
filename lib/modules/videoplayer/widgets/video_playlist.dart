import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nlighten/modules/videolist/widgets/video_list_tile.dart';
import 'package:nlighten/modules/videoplayer/bloc/bloc.dart';

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

              return VideoListTile(
                video: video,
                isSelected: _selectedVideo.id == video.id,
                onPressed: (id) {
                  context.read<VideoPlayerCubit>().playVideo(video);
                },
              );
            },
          ),
        );
      },
    );
  }
}
