import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nlighten/app_environments.dart';
import 'package:nlighten/locator.dart';
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

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(const NLighten());
}
