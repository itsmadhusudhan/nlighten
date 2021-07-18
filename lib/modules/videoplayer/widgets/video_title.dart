import 'package:flutter/material.dart';

class VideoTitle extends StatelessWidget {
  final String title;
  final String categoryName;

  const VideoTitle({
    Key? key,
    required this.title,
    required this.categoryName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(height: 4),
        Container(
          padding: EdgeInsets.all(4.0),
          child: Text(
            categoryName,
            style: TextStyle(fontSize: 12, color: Colors.white),
          ),
          decoration: BoxDecoration(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
