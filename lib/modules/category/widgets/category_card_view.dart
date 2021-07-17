import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nlighten/modules/category/cubit/category_cubit.dart';

import 'package:nlighten/modules/category/widgets/category_card.dart';
import 'package:nlighten/modules/category/widgets/title_row.dart';

class CategoryCardView extends StatelessWidget {
  const CategoryCardView({Key? key}) : super(key: key);

  Widget _successBuilder(categories) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
          child: TitleRow(title: "Categories", onPressed: () {}),
        ),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (ctx, index) => CategoryCard(
              category: categories[index],
              onPressed: (id) {
                print(id);
              },
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryCubit, CategoryState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => Center(
            child: CircularProgressIndicator(),
          ),
          success: _successBuilder,
        );
      },
    );
  }
}
