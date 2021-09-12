import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nlighten/locator.dart';

import 'package:nlighten/modules/category/cubit/category_cubit.dart';
import 'package:nlighten/modules/playlist/cubit/playlist_cubit.dart';
import 'package:nlighten/modules/videolist/cubit/video_list_cubit.dart';
import 'package:nlighten/modules/videoplayer/bloc/player/video_player_cubit.dart';
import 'package:nlighten/router/nlighten_router.dart';
import 'package:nlighten/router/routes.dart';
import 'package:nlighten_ui/nlighten_ui.dart';

class NLighten extends StatelessWidget {
  const NLighten({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          lazy: false,
          create: (ctx) => getIt<PlaylistCubit>()..loadAllPlaylists(),
        ),
        BlocProvider(
          lazy: false,
          create: (ctx) => getIt<VideoListCubit>()..loadAllVideos(),
        ),
        BlocProvider(
          create: (ctx) => getIt<CategoryCubit>()..getAllCategories(),
        ),
        BlocProvider(
          lazy: false,
          create: (ctx) => getIt<VideoPlayerCubit>(),
        ),
        // BlocProvider(
        //   create: (ctx) => getIt<WatchHistoryCubit>(),
        // ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        darkTheme: NLightenTheme.darkTheme,
        title: 'NLighten',
        theme: NLightenTheme.lightTheme,
        onGenerateRoute: NLightenRouter.onGenerateRoute,
        initialRoute: NLightenRouter.initialRoute,
        navigatorObservers: [Routes.rootRouteObserver],
      ),
    );
  }
}
