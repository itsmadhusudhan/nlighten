import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:nlighten_domain/nlighten_domain.dart';

class VideoListTile extends StatelessWidget {
  final VideoModel video;

  final Function(String videoId) onPressed;

  final bool isSelected;

  const VideoListTile({
    Key? key,
    required this.video,
    required this.onPressed,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onPressed(video.id),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CachedNetworkImage(
              width: 80,
              imageUrl: video.thumbnailUrl,
              placeholder: (ctx, r) => Container(
                height: 60,
                width: 80,
                color: Colors.grey,
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    video.title,
                    style: TextStyle(
                        fontSize: 16,
                        color: isSelected ? Colors.blue : Colors.black),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    video.categoryName,
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
