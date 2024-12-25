import 'package:gamer_tag/src/data/repository_impl/storage_repository/storage_repository_impl.dart';
import 'package:gamer_tag/src/domain/repository/storage_repository/storage_repository.dart';
import 'package:kiwi/kiwi.dart';

class RepositoryModule {
  const RepositoryModule._();

  static void inject() {
    KiwiContainer().registerFactory<StorageRepository>(
      (container) => StorageRepositoryImpl(
        apiService: container.resolve(),
      ),
    );
  }
}
