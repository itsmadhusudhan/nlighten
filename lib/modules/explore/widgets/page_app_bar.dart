import 'package:flutter/material.dart';

class PageAppBar extends StatelessWidget {
  final String title;

  const PageAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40))),
      title: Text(title),
      centerTitle: true,
      elevation: 0,
      floating: true,
      pinned: true,
      automaticallyImplyLeading: false,
    );
  }
}
