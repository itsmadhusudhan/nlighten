import 'package:flutter/material.dart';
import 'package:nlighten/modules/category/widgets/widgets.dart';
import 'package:nlighten/modules/videolist/widgets/video_list_card_view.dart';

import 'widgets.dart';

class ExplorePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          HeroSlider(),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 270,
            child: const VideoListCardView(
              title: "108 Pearls",
              id: "108Pearls",
            ),
          ),
          Container(
            height: 240,
            child: const CategoryCardView(),
          ),
          Container(
            height: 270,
            child: const VideoListCardView(
              title: "Oneness Capsules",
              id: "onenessCapsules",
            ),
          ),
        ],
      ),
    );
  }
}
