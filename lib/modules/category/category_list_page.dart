import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nlighten/modules/category/cubit/category_cubit.dart';
import 'package:nlighten/modules/videolist/video_list_page.dart';
import 'package:nlighten_domain/nlighten_domain.dart';

class CategoryListPage extends StatelessWidget {
  const CategoryListPage({Key? key}) : super(key: key);

  Widget _successBuilder(categories) {
    return Builder(builder: (context) {
      return ListView.builder(
        itemCount: categories.length,
        itemBuilder: (ctx, index) {
          final CategoryModel _category = categories[index];

          return ListTile(
            leading: Icon(Icons.playlist_play),
            title: Text(_category.title),
            onTap: () {
              VideoListPage.pushVideoListPageRoute(context,
                  title: _category.title, id: _category.id);
            },
          );
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Categories"),
        centerTitle: false,
      ),
      body: BlocBuilder<CategoryCubit, CategoryState>(
        builder: (context, state) {
          return state.maybeWhen(
            success: (e) => _successBuilder(e),
            orElse: () => Center(
              child: CircularProgressIndicator(),
            ),
          );
        },
      ),
    );
  }
}
