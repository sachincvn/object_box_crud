import '../models/user_model.dart';

/// Abstract interface for user local data operations
/// This defines the contract for user-specific local storage operations
abstract class UserLocalDataSource {
  /// Initialize the data source
  Future<void> init();

  /// Create a new user
  Future<UserModel> createUser(UserModel user);

  /// Get all users
  Future<List<UserModel>> getAllUsers();

  /// Get user by ID
  Future<UserModel?> getUserById(String id);

  /// Search users with query
  Future<List<UserModel>> searchUsers(String query);

  /// Update an existing user
  Future<UserModel> updateUser(UserModel user);

  /// Delete user by ID
  Future<void> deleteUser(String id);

  /// Delete all users
  Future<void> deleteAllUsers();

  /// Get total user count
  Future<int> getUserCount();

  /// Check if user exists
  Future<bool> userExists(String id);

  /// Close/dispose resources
  Future<void> close();
}
