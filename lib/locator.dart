import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'locator.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
void setupLocator(String env) {
  $initGetIt(getIt, environment: env);
}
