/// Example of how to use the storage abstraction layer
/// This demonstrates the plug-and-play nature of the storage system
library;

import 'local_storage.dart';
import 'objectbox_storage_helper.dart';
import 'base_entity.dart';
import '../../data/models/user_model.dart';

class StorageExample {
  /// Example of using ObjectBox storage
  /// Comprehensive example demonstrating all new storage features
  static Future<void> demonstrateObjectBoxStorage() async {
    // Create ObjectBox storage helper
    final LocalStorage<UserModel> storage = ObjectBoxStorageHelper<UserModel>(
      entityType: UserModel,
      config: StorageConfig<UserModel>(
        idExtractor: (user) => user.id,
        searchFunction: (user, query) => user.matchesSearchQuery(query),
      ),
    );

    try {
      // Initialize storage
      await storage.init();
      print('✅ Storage initialized: ${storage.isInitialized}');

      // ==================== CRUD Operations ====================

      // Create single user
      final user1 = UserModel(
        id: 'user1',
        name: 'John Doe',
        email: 'john.doe@example.com',
        phone: '+1234567890',
        createdAt: DateTime.now(),
      );

      final createdUser = await storage.create(user1);
      print('✅ Created user: ${createdUser.name}');

      // Create multiple users at once
      final users = [
        UserModel(id: 'user2', name: 'Jane Smith', email: 'jane@example.com', phone: '+1234567891', createdAt: DateTime.now()),
        UserModel(id: 'user3', name: 'Bob Johnson', email: 'bob@example.com', phone: '+1234567892', createdAt: DateTime.now()),
      ];

      final createdUsers = await storage.createAll(users);
      print('✅ Created ${createdUsers.length} users at once');

      // Get users by IDs
      final specificUsers = await storage.getByIds(['user1', 'user3']);
      print('✅ Got ${specificUsers.length} specific users');

      // ==================== Query Operations ====================

      // Search users
      final searchResults = await storage.search('john');
      print('🔍 Search results for "john": ${searchResults.length}');

      // Get paginated results
      final paginatedUsers = await storage.getPaginated(offset: 0, limit: 2);
      print('📄 Paginated users (limit 2): ${paginatedUsers.length}');

      // Get users with custom filter
      final filteredUsers = await storage.getWhere((user) => user.name.contains('Smith'));
      print('🔧 Users with "Smith": ${filteredUsers.length}');

      // ==================== Utility Operations ====================

      // Check if storage is empty
      final isEmpty = await storage.isEmpty();
      print('📊 Storage is empty: $isEmpty');

      // Get first and last users
      final firstUser = await storage.getFirst();
      final lastUser = await storage.getLast();
      print('👤 First user: ${firstUser?.name}, Last user: ${lastUser?.name}');

      // Get database info
      final dbInfo = await storage.getDatabaseInfo();
      print('ℹ️ Database info: $dbInfo');

      // ==================== Database Operations ====================

      // Delete specific users
      await storage.deleteByIds(['user2', 'user3']);
      print('🗑️ Deleted users 2 and 3');

      // Final count
      final finalCount = await storage.count();
      print('📊 Final user count: $finalCount');
    } catch (e) {
      print('❌ Error: $e');
    } finally {
      // Always close storage
      await storage.close();
      print('🔒 Storage closed');
    }
  }

  /// Example of how easy it would be to swap storage implementations
  /// Just change the storage instance and everything else remains the same
  static Future<void> demonstrateStorageSwapping() async {
    // This could be any storage implementation
    // LocalStorage<UserModel> storage = HiveStorageHelper();  // Hypothetical
    // LocalStorage<UserModel> storage = SqliteStorageHelper(); // Hypothetical
    LocalStorage<UserModel> storage = ObjectBoxStorageHelper<UserModel>(
      entityType: UserModel,
      config: StorageConfig<UserModel>(
        idExtractor: (user) => user.id,
        searchFunction: (user, query) => user.matchesSearchQuery(query),
      ),
    ); // Current

    // All the same operations work regardless of storage implementation
    await storage.init();

    final user = UserModel(
      id: 'test-id',
      name: 'Test User',
      email: 'test@example.com',
      phone: '1234567890',
      createdAt: DateTime.now(),
    );

    await storage.create(user);
    final users = await storage.getAll();
    print('Users in storage: ${users.length}');

    await storage.close();
  }
}
