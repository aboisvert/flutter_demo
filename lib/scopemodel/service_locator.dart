import 'package:get_it/get_it.dart';
import 'scoped_ginger_app.dart';

class ServiceLocator extends GetIt {
  static ServiceLocator instance;

  static getServiceLocator() {
    if (instance == null) {
      instance = new ServiceLocator();
    }
    return instance;
  }
}


void setupLocator() {
  // Register services
  ServiceLocator locator= ServiceLocator.getServiceLocator();
  // Register models
  locator.registerFactory<ScopedGingerApp>(() => ScopedGingerApp());
}