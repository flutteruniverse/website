import 'package:get_it/get_it.dart';

typedef RegisterLazy<T> = T Function();

mixin InstanceFactory {
  static final GetIt _getIt = GetIt.instance;

  static T get<T extends Object>() {
    return _getIt.get<T>();
  }
}
