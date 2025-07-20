import '../entities/user.dart';
import '../../core/utils/typedef.dart';

abstract class UserRepository {
  // Create
  ResultFuture<User> createUser(User user);
  
  // Read
  ResultFuture<List<User>> getAllUsers();
  ResultFuture<User> getUserById(String id);
  ResultFuture<List<User>> searchUsers(String query);
  
  // Update
  ResultFuture<User> updateUser(User user);
  
  // Delete
  ResultVoid deleteUser(String id);
  ResultVoid deleteAllUsers();
  
  // Utility
  ResultFuture<int> getUserCount();
  ResultFuture<bool> userExists(String id);
}
