import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nlighten/locator.dart';

import 'package:nlighten/modules/category/cubit/category_cubit.dart';
import 'package:nlighten/modules/videolist/cubit/video_list_cubit.dart';
import 'package:nlighten/router/nlighten_router.dart';

class NLighten extends StatelessWidget {
  const NLighten({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (ctx) => getIt<CategoryCubit>()..getAllCategories(),
        ),
        BlocProvider(
          create: (ctx) => getIt<VideoListCubit>()..getAllVideos(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        darkTheme: ThemeData.dark(),
        title: 'NLighten',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        onGenerateRoute: NLightenRouter.onGenerateRoute,
        initialRoute: NLightenRouter.initialRoute,
        navigatorObservers: [NLightenRouter.rootRouteObserver],
      ),
    );
  }
}
