import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nlighten/modules/videolist/widgets/video_list_tile.dart';
import 'package:nlighten/modules/videoplayer/bloc/bloc.dart';
import 'package:nlighten/modules/videoplayer/widgets/video_title.dart';
import 'package:nlighten_ui/nlighten_ui.dart';

class VideoPlayerPageBody extends StatefulWidget {
  final Widget player;

  const VideoPlayerPageBody({Key? key, required this.player}) : super(key: key);

  @override
  _VideoPlayerPageBodyState createState() => _VideoPlayerPageBodyState();
}

class _VideoPlayerPageBodyState extends State<VideoPlayerPageBody> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VideoPlayerCubit, VideoPlayerState>(
      builder: (ctx, state) {
        final videos = state.playlist;

        return Column(
          children: [
            widget.player,
            Expanded(
              child: CustomScrollView(
                physics: ClampingScrollPhysics(),
                slivers: [
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 16),
                    sliver: SliverToBoxAdapter(
                      child: VideoTitle(
                        title: state.selectedVideo!.title,
                      ),
                    ),
                  ),
                  if (state.selectedVideo!.description != null)
                    SliverToBoxAdapter(child: Divider()),
                  if (state.selectedVideo!.description != null)
                    SliverPadding(
                      padding: const EdgeInsets.only(
                          left: 16, right: 16, top: 16, bottom: 20),
                      sliver: SliverToBoxAdapter(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Description",
                              style: TextStyle(
                                color: UIColors.matrix,
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            RichText(
                              maxLines: isExpanded ? 300 : 6,
                              softWrap: true,
                              text: TextSpan(
                                style: TextStyle(
                                  color: UIColors.sharkBlack,
                                ),
                                text: state.selectedVideo!.description!,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isExpanded = !isExpanded;
                                });
                              },
                              child: RichText(
                                text: TextSpan(
                                  style: TextStyle(color: UIColors.matrix),
                                  text: isExpanded ? "Read Less" : "Read More",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  SliverToBoxAdapter(child: Divider()),
                  SliverPadding(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                    sliver: SliverToBoxAdapter(
                      child: Text(
                        "Up Next",
                        style: TextStyle(
                          color: UIColors.matrix,
                        ),
                      ),
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        final _video = videos[index];

                        return VideoListTile(
                          video: _video,
                          onPressed: (id) {
                            context.read<VideoPlayerCubit>().playVideo(_video);
                          },
                        );
                      },
                      childCount: videos.length,
                      addAutomaticKeepAlives: true,
                    ),
                  )
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
