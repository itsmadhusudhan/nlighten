import 'dart:math';

import 'package:flutter/material.dart';
import 'package:nlighten_ui/nlighten_ui.dart';

class AppHeaderDelegate extends SliverPersistentHeaderDelegate {
  final double hminExtent;
  final double hmaxExtent;

  final String title;
  final int count;

  AppHeaderDelegate(
      {required this.hminExtent,
      required this.hmaxExtent,
      required this.title,
      required this.count});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          height: maxExtent,
          color: UIColors.gray,
        ),

        Positioned(
          top: getOpacity(shrinkOffset) < 0.7 ? 0 : 30,
          left: shrinkOffset < 0.7 ? 30 : 16,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Opacity(
                opacity: getOpacity(shrinkOffset),
                child: InkWell(
                  onTap: Navigator.of(context).pop,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: Row(
                      children: [
                        Icon(Icons.arrow_back_ios),
                        Text("Back"),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Row(
                  children: [
                    if (1 - getOpacity(shrinkOffset) > 0.7)
                      InkWell(
                        child: Padding(
                            padding: EdgeInsets.only(right: 12),
                            child: Icon(Icons.arrow_back)),
                        onTap: Navigator.of(context).pop,
                      ),
                    Text(
                      title,
                      style: TextStyle(
                        color: UIColors.matrix,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      softWrap: true,
                    )
                  ],
                ),
              ),
              Opacity(
                opacity: getOpacity(shrinkOffset),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: UIColors.matrix,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                    ),
                  ),
                  child: Text(
                    "${count} Videos",
                    style: TextStyle(
                        color: UIColors.white
                            .withOpacity(getOpacity(shrinkOffset))),
                  ),
                ),
              )
            ],
          ),
        ),
        // Positioned(
        //   bottom: 20,
        //   left: 30,
        //   child: ,
        // )
      ],
    );
  }

  double getOpacity(double shrinkOffset) {
    return 1.0 - max(0.0, shrinkOffset) / maxExtent;
  }

  @override
  double get maxExtent => hmaxExtent;

  @override
  double get minExtent => hminExtent;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
