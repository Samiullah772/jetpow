import 'package:get_it/get_it.dart';
import 'package:jetpow/core/services/local_storage_service.dart';


GetIt locator = GetIt.instance;

setupLocator()async{
  locator.registerSingleton(LocalStorageService());

}