import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nlighten/locator.dart';

import 'package:nlighten/modules/videolist/widgets/video_list_card.dart';
import 'package:nlighten/modules/videoplayer/bloc/bloc.dart';
import 'package:nlighten/router/routes.dart';
import 'package:nlighten_domain/nlighten_domain.dart';
import 'package:nlighten_ui/nlighten_ui.dart';

class VideoListCardView extends StatelessWidget {
  final Playlist playlist;

  const VideoListCardView({
    Key? key,
    required this.playlist,
  }) : super(key: key);

  Widget _successBuilder(List<VideoModel> videos) {
    if (videos.isEmpty) {
      return Center(
        child: Text("No Videos Found"),
      );
    }

    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: videos.length, // FIXME: limit the count to 4/5 later
      itemBuilder: (context, index) => VideoListCard(
        video: videos[index],
        onPressed: (id) {
          context
              .read<VideoPlayerCubit>()
              .loadPlayList(video: videos[index], playlist: videos);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    playlist.title,
                    style: TextStyle(
                        fontSize: 20,
                        color: UIColors.matrix,
                        fontWeight: FontWeight.w500),
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(
                      Routes.videoListRoute,
                      arguments: VideoPlaylistArgumnets(
                          playlistId: playlist.id,
                          playlistTitle: playlist.title),
                    );
                  },
                  child: Row(
                    children: [
                      Text("${playlist.videosList.length} videos"),
                      Icon(Icons.keyboard_arrow_right)
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: FutureBuilder(
                future: getIt<VideoRepository>()
                    .fetchVideosByPlaylistId(playlist.id, limit: 5),
                builder: (ctx, AsyncSnapshot<List<VideoModel>> snapshot) {
                  if (snapshot.connectionState == AsyncSnapshot.waiting()) {
                    return Container(
                      child: Text("Loading"),
                    );
                  }

                  if (snapshot.hasData && snapshot.data != null) {
                    return _successBuilder(snapshot.data!);
                  }

                  return Container(
                    child: Text("error"),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
