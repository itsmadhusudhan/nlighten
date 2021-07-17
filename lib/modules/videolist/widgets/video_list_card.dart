import 'package:flutter/material.dart';
import 'package:nlighten_domain/nlighten_domain.dart';

class VideoListCard extends StatelessWidget {
  final VideoModel video;

  final Function(String videoId) onPressed;

  const VideoListCard({
    Key? key,
    required this.video,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      margin: EdgeInsets.symmetric(horizontal: 12),
      child: InkWell(
        onTap: () => onPressed(video.id),
        child: Center(
          child: new Text(
            video.title,
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
