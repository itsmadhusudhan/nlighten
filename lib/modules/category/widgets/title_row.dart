import 'package:flutter/material.dart';

class TitleRow extends StatelessWidget {
  final String title;

  final Function()? onPressed;

  final String actionText;

  TitleRow({
    Key? key,
    required this.title,
    this.onPressed,
    this.actionText = "See All",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 20),
        ),
        if (onPressed != null)
          TextButton(onPressed: onPressed, child: Text(actionText))
      ],
    );
  }
}
