// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:nlighten_domain/nlighten_domain.dart' as _i3;

import 'modules/category/cubit/category_cubit.dart' as _i6;
import 'modules/history/cubit/watch_history_cubit.dart' as _i8;
import 'modules/history/repository/watch_history_respository.dart' as _i5;
import 'modules/videolist/cubit/video_list_cubit.dart' as _i7;
import 'modules/videoplayer/cubit/video_player_cubit.dart' as _i4;
import 'repository_injector.dart' as _i9;

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
  gh.factory<_i4.VideoPlayerCubit>(() => _i4.VideoPlayerCubit());
  gh.lazySingleton<_i3.VideoRepository>(
      () => repositoryInjector.localVideoRepository,
      registerFor: {_local});
  gh.lazySingleton<_i5.WatchHistoryRepository>(
      () => repositoryInjector.localWatchHistoryRepository,
      registerFor: {_local});
  gh.factory<_i6.CategoryCubit>(
      () => _i6.CategoryCubit(get<_i3.CategoryRepository>()));
  gh.factory<_i7.VideoListCubit>(
      () => _i7.VideoListCubit(get<_i3.VideoRepository>()));
  gh.factory<_i8.WatchHistoryCubit>(
      () => _i8.WatchHistoryCubit(get<_i5.WatchHistoryRepository>()));
  return get;
}

class _$RepositoryInjector extends _i9.RepositoryInjector {}
