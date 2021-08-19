import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:nlighten_domain/nlighten_domain.dart';
import 'package:nlighten_ui/nlighten_ui.dart';

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
      focusColor: UIColors.matrix.withOpacity(0.5),
      splashColor: UIColors.matrix.withOpacity(0.1),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CachedNetworkImage(
              width: 150,
              height: 90,
              imageBuilder: (context, imageProvider) => Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      color: UIColors.hitGray,
                      offset: Offset(0, 1),
                      spreadRadius: 2,
                    )
                  ],
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              imageUrl: video.thumbnailUrl,
              placeholder: (ctx, r) => Container(
                height: 90,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
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
                    "video.categoryName",
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
