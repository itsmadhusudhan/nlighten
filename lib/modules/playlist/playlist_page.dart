import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nlighten/modules/playlist/cubit/playlist_cubit.dart';
import 'package:nlighten/router/routes.dart';
import 'package:nlighten_ui/nlighten_ui.dart';

class PlaylistPage extends StatelessWidget {
  const PlaylistPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlaylistCubit, PlaylistState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            iconTheme: IconThemeData(color: UIColors.matrix),
            elevation: 6,
            shadowColor: Colors.grey.withOpacity(0.5),
            backgroundColor: UIColors.white,
            title: state.maybeWhen(
              orElse: () => Text(
                "Playlists",
                style: TextStyle(
                  color: UIColors.matrix,
                  fontWeight: FontWeight.bold,
                ),
              ),
              success: (playlists) => Text(
                "Playlists (${playlists.length})",
                style: TextStyle(
                  color: UIColors.matrix,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          body: state.maybeWhen(
            orElse: () {
              return const CircularProgressIndicator();
            },
            error: (e) {
              return Center(
                child: Text("Error While fetching list $e"),
              );
            },
            success: (playlists) {
              return ListView.builder(
                padding: EdgeInsets.only(top: 20, bottom: 100),
                shrinkWrap: true,
                itemCount: playlists.length,
                itemBuilder: (ctx, index) {
                  final playlist = playlists[index];

                  return Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: UIColors.hitGray.withOpacity(0.6),
                          offset: const Offset(
                            1.0,
                            1.0,
                          ),
                          blurRadius: 10.0,
                          spreadRadius: 1.0,
                        ),
                        BoxShadow(
                          color: Colors.white,
                          offset: const Offset(0.0, 0.0),
                          blurRadius: 0.0,
                          spreadRadius: 0.0,
                        ), //
                      ],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    child: Material(
                      child: InkWell(
                        highlightColor: UIColors.matrix.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(10),
                        onTap: () {
                          // FIXME: sending dummy argument for now
                          Navigator.of(context).pushNamed(
                            Routes.videoListRoute,
                            arguments: VideoPlaylistArgumnets(
                              playlistId: playlist.id,
                              playlistTitle: playlist.title,
                            ),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                playlist.title,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text("${playlist.videosList.length} Videos"),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          ),
        );
      },
    );
  }
}
