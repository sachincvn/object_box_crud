import 'package:get_it/get_it.dart';

// Storage
import '../storage/objectbox_storage_helper.dart';
import '../storage/base_entity.dart';

// Data Sources
import '../../data/datasources/user_local_data_source.dart';
import '../../data/datasources/user_objectbox_data_source_impl.dart';
import '../../data/models/user_model.dart';

// Repositories
import '../../domain/repositories/user_repository.dart';
import '../../data/repositories/user_repository_impl.dart';

// Use Cases
import '../../domain/usecases/create_user.dart';
import '../../domain/usecases/get_all_users.dart';
import '../../domain/usecases/update_user.dart';
import '../../domain/usecases/delete_user.dart';
import '../../domain/usecases/search_users.dart';

// Presentation
import '../../presentation/bloc/user_bloc.dart';

class Injector {
  static final GetIt _getIt = GetIt.instance;

  static GetIt get instance => _getIt;

  static Future<void> init() async {
    // Initialize ObjectBox Storage Helper for UserModel
    final storageHelper = ObjectBoxStorageHelper<UserModel>(
      entityType: UserModel,
      config: StorageConfig<UserModel>(
        idExtractor: (user) => user.id,
        searchFunction: (user, query) => user.matchesSearchQuery(query),
      ),
    );
    await storageHelper.init();

    // Register Storage Helper
    _getIt.registerLazySingleton<ObjectBoxStorageHelper<UserModel>>(() => storageHelper);

    // Initialize Data Source
    final userDataSource = UserObjectBoxDataSource(storageHelper);
    await userDataSource.init();

    // Data Sources
    _getIt.registerLazySingleton<UserLocalDataSource>(
      () => userDataSource,
    );

    // Repositories
    _getIt.registerLazySingleton<UserRepository>(
      () => UserRepositoryImpl(_getIt()),
    );

    // Use Cases
    _getIt.registerLazySingleton(() => CreateUser(_getIt()));
    _getIt.registerLazySingleton(() => GetAllUsers(_getIt()));
    _getIt.registerLazySingleton(() => UpdateUser(_getIt()));
    _getIt.registerLazySingleton(() => DeleteUser(_getIt()));
    _getIt.registerLazySingleton(() => SearchUsers(_getIt()));

    // BLoC
    _getIt.registerFactory(
      () => UserBloc(
        createUser: _getIt(),
        getAllUsers: _getIt(),
        updateUser: _getIt(),
        deleteUser: _getIt(),
        searchUsers: _getIt(),
      ),
    );
  }

  static T get<T extends Object>() => _getIt.get<T>();

  static void reset() => _getIt.reset();
}
