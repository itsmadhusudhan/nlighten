import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nlighten/nlighten.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  FlutterError.onError = (details) {
    print(details.exceptionAsString());
    print(details.stack.toString());
  };

  runZonedGuarded(
    () => runApp(const NLighten()),
    (error, stackTrace) {
      print(error.toString());
      print(stackTrace.toString());
    },
  );
}