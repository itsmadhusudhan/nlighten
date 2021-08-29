import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nlighten/modules/playlist/cubit/playlist_cubit.dart';
import 'package:nlighten/modules/videolist/widgets/video_list_card_view.dart';
import 'package:nlighten/router/routes.dart';
import 'package:nlighten_ui/nlighten_ui.dart';

class ExplorePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        // Container(
        //   color: UIColors.matrix,
        //   padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        //   child: Text("NLighten Me"),
        // ),
        // HeroSlider(),
        // const SizedBox(
        //   height: 20,
        // ),
        Container(
          decoration: BoxDecoration(
            // color: const Color(0xff7c94b6),
            color: UIColors.zobra,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: UIColors.hitGray,
                blurRadius: 5.0,
              )
            ],
            image: DecorationImage(
                fit: BoxFit.cover,
                alignment: Alignment.center,
                image: AssetImage(
                  'lib/assets/guru.jpeg',
                ),
                colorFilter: ColorFilter.mode(
                    UIColors.hitGray.withOpacity(0.5), BlendMode.dstATop)),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
          margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
          child: InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(Routes.playlistRoute);
            },
            highlightColor: UIColors.hitGray,
            splashColor: UIColors.hitGray,
            child: Center(
              child: Text(
                "Browse All Playlist",
                style: TextStyle(
                  color: UIColors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        // Padding(
        //   padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
        //   child: TextButton(
        //     style: ButtonStyle(
        //       backgroundColor:
        //           MaterialStateColor.resolveWith((states) => UIColors.matrix),
        //       padding: MaterialStateProperty.resolveWith(
        //           (states) => EdgeInsets.symmetric(vertical: 16)),
        //     ),
        //     onPressed: () {
        //       Navigator.of(context).pushNamed(Routes.playlistRoute);
        //     },
        //     child: Container(
        //       decoration: BoxDecoration(
        //           image: DecorationImage(
        //               fit: BoxFit.cover,
        //               image: AssetImage('lib/assets/guru.jpeg'))),
        //       child: Text(
        //         "Browse All Playlist",
        //         style: TextStyle(color: UIColors.white, fontSize: 16),
        //       ),
        //     ),
        //   ),
        // ),
        BlocBuilder<PlaylistCubit, PlaylistState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () {
                return Text("No Playlists found");
              },
              success: (playlists) {
                return Column(
                  children: [
                    for (var i = 0; i < 3; i++)
                      VideoListCardView(
                        playlist: playlists[i], // just showing them in random
                      )
                  ],
                );
              },
            );
          },
        )
      ],
    );
  }
}
