import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nlighten/modules/category/cubit/category_cubit.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _successBuilder(categories) {
      return ListView.builder(itemBuilder: (ctx, index) {
        final _category = categories[index];

        return ListTile(
          title: Text(_category.title),
        );
      });
    }

    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<CategoryCubit, CategoryState>(
        builder: (context, state) {
          return state.maybeMap(
            success: _successBuilder,
            orElse: () => Center(
              child: CircularProgressIndicator(),
            ),
          );
        },
      ),
    );
  }
}
