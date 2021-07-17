import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nlighten_domain/nlighten_domain.dart';

part 'category_state.dart';
part 'category_cubit.freezed.dart';

@injectable
class CategoryCubit extends Cubit<CategoryState> {
  final CategoryRepository _categoryRepository;

  CategoryCubit(this._categoryRepository) : super(CategoryState.initial());

  getAllCategories() async {
    try {
      final result = await _categoryRepository
          .fetchAllCategories('lib/assets/data/categories.json');

      final categories = result['data']
          .map<CategoryModel>((json) => CategoryModel.fromJson(json))
          .toList();

      if (categories != null) {
        emit(CategoryState.success(categories));
      } else {
        emit(CategoryState.success([]));
      }
    } catch (e) {
      emit(CategoryState.error(message: e.toString()));
    }
  }
}
