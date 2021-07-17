part of 'category_cubit.dart';

@freezed
class CategoryState with _$CategoryState {
  factory CategoryState.initial() = _CategoryStateInitial;

  factory CategoryState.loading() = _CategoryStateLoading;

  factory CategoryState.error({required String message}) = _CategoryStateError;

  factory CategoryState.success(List<CategoryModel> categories) =
      _CategoryStateSuccess;
}
