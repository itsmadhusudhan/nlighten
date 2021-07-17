// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:nlighten_domain/nlighten_domain.dart' as _i3;

import 'modules/category/cubit/category_cubit.dart' as _i4;
import 'modules/videolist/cubit/video_list_cubit.dart' as _i5;
import 'repository_injector.dart' as _i6;

const String _local = 'local';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final repositoryInjector = _$RepositoryInjector();
  gh.lazySingleton<_i3.CategoryRepository>(
      () => repositoryInjector.localCategoryRepository,
      registerFor: {_local});
  gh.factory<_i3.VideoRepository>(
      () => repositoryInjector.localVideoRepository);
  gh.factory<_i4.CategoryCubit>(
      () => _i4.CategoryCubit(get<_i3.CategoryRepository>()));
  gh.factory<_i5.VideoListCubit>(
      () => _i5.VideoListCubit(get<_i3.VideoRepository>()),
      registerFor: {_local});
  return get;
}

class _$RepositoryInjector extends _i6.RepositoryInjector {}
