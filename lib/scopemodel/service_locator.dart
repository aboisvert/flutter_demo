import 'package:get_it/get_it.dart';
import 'scoped_button.dart';
import 'scoped_title.dart';
import 'scoped_ginger_app.dart';

class ServiceLocator extends GetIt{
    static ServiceLocator instance;
    static getServiceLocator(){
      if(instance==null){
        instance =new ServiceLocator();
      }else{

      }
      return instance;
    }
}


void setupLocator() {
  // Register services
  ServiceLocator locator= ServiceLocator.getServiceLocator();
  // Register models
  locator.registerFactory<ScopedGingerApp>(() => ScopedGingerApp());
  locator.registerFactory<ScopedButtonSection>(() => ScopedButtonSection());
  locator.registerFactory<ScopedTitleSection>(() => ScopedTitleSection());
}