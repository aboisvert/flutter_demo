import 'package:get_it/get_it.dart';
import 'scoped_button.dart';
import 'scoped_title.dart';
import 'scoped_ginger_app.dart';

GetIt locator = GetIt();

void setupLocator() {
  // Register services

  // Register models
  locator.registerFactory<ScopedGingerApp>(() => ScopedGingerApp());
  locator.registerFactory<ScopedButtonSection>(() => ScopedButtonSection());
  locator.registerFactory<ScopedTitleSection>(() => ScopedTitleSection());
}