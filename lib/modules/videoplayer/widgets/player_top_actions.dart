import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nlighten/modules/videoplayer/bloc/bloc.dart';

class PlayerTopActions extends StatelessWidget {
  final Function({required String type}) onAction;

  PlayerTopActions({Key? key, required this.onAction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VideoPlayerCubit, VideoPlayerState>(
      builder: (context, state) {
        return Expanded(
          child: Row(
            children: [
              IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 30.0,
                ),
                onPressed: () {
                  SystemChrome.setPreferredOrientations(
                      [DeviceOrientation.portraitUp]);
                  // Navigator.pop(context);
                  onAction(type: "TOGGLE_FULLSCREEN");
                },
              ),
              Container(
                width: MediaQuery.of(context).size.width - 100,
                child: Text(
                  state.selectedVideo!.title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
