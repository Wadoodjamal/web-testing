import 'package:get_it/get_it.dart';
import 'package:web_testing/services/app_navigation.dart';

GetIt locator = GetIt.instance;

void setUpLocator() {
  locator.registerLazySingleton(() => AppNavigation());
}
