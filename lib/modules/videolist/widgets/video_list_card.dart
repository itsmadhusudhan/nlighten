import 'package:cached_network_image/cached_network_image.dart';
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
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: InkWell(
        onTap: () => onPressed(video.id),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CachedNetworkImage(
              height: 150,
              imageUrl: video.thumbnailUrl,
              errorWidget: (context, url, error) =>
                  Center(child: Icon(Icons.error)),
              placeholder: (context, url) => Container(
                height: 150,
                width: 250,
                color: Colors.grey.shade300,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: new Text(
                video.title,
                style: TextStyle(
                  fontSize: 16,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
