import 'package:flutter/material.dart';

import 'widgets.dart';

class ExplorePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const HeroSlider(),
        Expanded(
          child: const Center(
            child: Text("Video Categories will appear here"),
          ),
        )
      ],
    );
  }
}
