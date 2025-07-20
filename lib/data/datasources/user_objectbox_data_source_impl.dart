import '../models/user_model.dart';
import 'user_local_data_source.dart';
import '../../core/storage/objectbox_storage_helper.dart';

/// ObjectBox implementation of UserLocalDataSource
/// Uses ObjectBoxStorageHelper as the underlying storage mechanism
class UserObjectBoxDataSource implements UserLocalDataSource {
  final ObjectBoxStorageHelper<UserModel> _storageHelper;

  UserObjectBoxDataSource(this._storageHelper);

  @override
  Future<void> init() async {
    await _storageHelper.init();
  }

  @override
  Future<UserModel> createUser(UserModel user) async {
    return await _storageHelper.create(user);
  }

  @override
  Future<List<UserModel>> getAllUsers() async {
    return await _storageHelper.getAll();
  }

  @override
  Future<UserModel?> getUserById(String id) async {
    return await _storageHelper.getById(id);
  }

  @override
  Future<List<UserModel>> searchUsers(String query) async {
    return await _storageHelper.search(query);
  }

  @override
  Future<UserModel> updateUser(UserModel user) async {
    return await _storageHelper.update(user);
  }

  @override
  Future<void> deleteUser(String id) async {
    await _storageHelper.delete(id);
  }

  @override
  Future<void> deleteAllUsers() async {
    await _storageHelper.deleteAll();
  }

  @override
  Future<int> getUserCount() async {
    return await _storageHelper.count();
  }

  @override
  Future<bool> userExists(String id) async {
    return await _storageHelper.exists(id);
  }

  @override
  Future<void> close() async {
    await _storageHelper.close();
  }
}
