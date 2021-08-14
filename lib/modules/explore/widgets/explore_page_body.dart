import 'dart:math';

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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
          child: TextButton(
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateColor.resolveWith((states) => UIColors.matrix),
              padding: MaterialStateProperty.resolveWith(
                  (states) => EdgeInsets.symmetric(vertical: 16)),
            ),
            onPressed: () {
              Navigator.of(context).pushNamed(Routes.playlistRoute);
            },
            child: Container(
              // decoration: BoxDecoration(
              //     image: DecorationImage(
              //         fit: BoxFit.fill,
              //         image: AssetImage('lib/assets/guru.jpeg'))),
              child: Text(
                "Browse All Playlist",
                style: TextStyle(color: UIColors.white, fontSize: 16),
              ),
            ),
          ),
        ),
        BlocBuilder<PlaylistCubit, PlaylistState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () {
                return Text("No Playlists found");
              },
              success: (playlists) {
                var rng = new Random();

                return Column(
                  children: [
                    for (var i = 0; i < 3; i++)
                      VideoListCardView(
                        playlist: playlists[rng.nextInt(playlists.length -
                            1)], // just showing them in random
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
