import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({Key? key}) : super(key: key);

  List<Widget> _headerSliverBuilder(
    BuildContext context,
    bool innerBoxIsScrolled,
  ) {
    return [PageAppBar(title: "Explore")];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        physics: const PageScrollPhysics(),
        headerSliverBuilder: _headerSliverBuilder,
        body: ExplorePageBody(),
      ),
    );
  }
}
