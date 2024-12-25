import 'package:gamer_tag/src/core/network/network_module.dart';
import 'package:gamer_tag/src/domain/di/repository_module.dart';

class DependencyInjection {
  const DependencyInjection._();

  static void inject(){
    NetworkModule.inject();
    RepositoryModule.inject();
  }
}
