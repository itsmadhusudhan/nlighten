import 'package:flutter/material.dart';
import 'package:nlighten/router/nlighten_router.dart';

class NLighten extends StatelessWidget {
  const NLighten({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      title: 'NLighten',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: NLightenRouter.onGenerateRoute,
      initialRoute: NLightenRouter.initialRoute,
      navigatorObservers: [NLightenRouter.rootRouteObserver],
    );
  }
}
