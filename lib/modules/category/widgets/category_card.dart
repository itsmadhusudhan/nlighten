import 'package:flutter/material.dart';

import 'package:nlighten_domain/nlighten_domain.dart';

class CategoryCard extends StatelessWidget {
  final CategoryModel category;

  final Function(String categoryId) onPressed;

  const CategoryCard({
    Key? key,
    required this.category,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      margin: EdgeInsets.symmetric(horizontal: 12),
      child: InkWell(
        onTap: () => onPressed(category.id),
        child: Center(
          child: new Text(
            category.title,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: const Color(0xff7c94b6),
        image: DecorationImage(
          fit: BoxFit.cover,
          colorFilter: new ColorFilter.mode(
              Colors.black.withOpacity(0.2), BlendMode.dstATop),
          image: category.imageUrl != ''
              ? NetworkImage(category.imageUrl) as ImageProvider
              : AssetImage(
                  'lib/assets/swamyji.webp',
                ),
        ),
      ),
    );
  }
}
