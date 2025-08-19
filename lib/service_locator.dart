import 'package:get_it/get_it.dart';
import 'package:task/fire_base/fire_base_auth.dart';
import 'package:task/fire_base/fire_base_fire_store.dart';

final getIt = GetIt.instance;
void initServiceLocator() {
  getIt.registerSingleton(FireBaseFireStore());
  getIt.registerSingleton(FireBaseFireAuth());
}
