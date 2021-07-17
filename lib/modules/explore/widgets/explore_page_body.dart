import 'package:flutter/material.dart';
import 'package:nlighten/modules/category/widgets/widgets.dart';

import 'widgets.dart';

class ExplorePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const HeroSlider(),
        Container(
          height: 220,
          child: const CategoryCardView(),
        ),
      ],
    );
  }
}
