import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nlighten/modules/category/cubit/category_cubit.dart';

import 'package:nlighten/modules/category/widgets/category_card.dart';
import 'package:nlighten/modules/category/widgets/title_row.dart';
import 'package:nlighten/modules/videolist/video_list_page.dart';
import 'package:nlighten/router/routes.dart';

class CategoryCardView extends StatelessWidget {
  const CategoryCardView({Key? key}) : super(key: key);

  Widget _successBuilder(categories) {
    return Builder(
      builder: (context) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
              child: TitleRow(
                title: "Categories",
                actionText: "See All",
                onPressed: () {
                  Navigator.of(context).pushNamed(Routes.categoryListRoute);
                },
              ),
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount:
                    categories.length, // FIXME: limit the count to 4/5 later
                itemBuilder: (ctx, index) => CategoryCard(
                  category: categories[index],
                  onPressed: (id) {
                    VideoListPage.pushVideoListPageRoute(context,
                        title: categories[index].title, id: id);
                  },
                ),
              ),
            ),
          ],
        );
      },
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
