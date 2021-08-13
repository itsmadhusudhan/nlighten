import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:nlighten/app_environments.dart';
import 'package:nlighten/constants.dart';
import 'package:nlighten/locator.dart';
import 'package:nlighten/modules/history/hive_watch_history.dart';
import 'package:nlighten/modules/playlist/domain/playlist_dao/playlist_dao.dart';
import 'package:nlighten/modules/videolist/repositories/local_video.dart';
import 'package:nlighten/nlighten.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  FlutterError.onError = (details) {
    print(details.exceptionAsString());
    print(details.stack.toString());
  };

  runZonedGuarded(
    initialiseApplication,
    (error, stackTrace) {
      print(error.toString());
      print(stackTrace.toString());
    },
  );
}

initialiseApplication() async {
  setupLocator(AppEnvironment.local);

  await Hive.initFlutter();

  Hive.registerAdapter(PlaylistDaoAdapter());

  Hive.registerAdapter(HiveWatchHistoryAdapter());

  Hive.registerAdapter(HiveVideoModelAdapter());

  // preference box
  await Hive.openBox(Constants.PREFERENCE_BOX);

  // playlist box
  await Hive.openBox<PlaylistDao>(Constants.PLAYLIST_BOX);

  await Hive.openBox<LocalVideo>('videos');

  await Hive.openBox<HiveWatchHistory>('watchhistory');

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(const NLighten());
}
