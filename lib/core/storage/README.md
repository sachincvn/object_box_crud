# Generic Storage Architecture

This directory contains a sophisticated, generic, and scalable storage abstraction layer that can work with any entity type.

## 🏗️ Architecture Overview

### Base Components

1. **`LocalStorage<T>`** - Generic interface for any storage implementation
2. **`BaseEntity`** - Base interface that all entities must implement
3. **`ObjectBoxStorageHelper<T>`** - Generic ObjectBox implementation

### Key Benefits

✅ **Generic & Reusable** - Works with any entity type that extends BaseEntity
✅ **Type-Safe** - Full type safety with generics
✅ **Plug-and-Play** - Easy to swap storage implementations
✅ **Scalable** - Add new entities without changing storage code
✅ **Clean Separation** - Clear separation between storage and business logic

## 📁 File Structure

```
lib/core/storage/
├── local_storage.dart           # Generic storage interface
├── base_entity.dart            # Base entity interface
├── objectbox_storage_helper.dart # Generic ObjectBox implementation
└── storage_example.dart        # Usage examples
```

## 🔧 How to Use

### 1. Create an Entity

Your entity must extend `BaseEntity`:

```dart
@Entity()
class UserModel extends BaseEntity {
  @Id()
  @override
  int objectBoxId = 0;

  @Unique()
  @override
  final String id;

  final String name;
  final String email;

  // Constructor...

  @override
  BaseEntity copyWithObjectBoxId(int objectBoxId) {
    return copyWith(objectBoxId: objectBoxId);
  }

  @override
  bool matchesSearchQuery(String query) {
    final lowercaseQuery = query.toLowerCase();
    return name.toLowerCase().contains(lowercaseQuery) ||
           email.toLowerCase().contains(lowercaseQuery);
  }
}
```

### 2. Create Storage Helper

```dart
// Create a typed storage helper
final storage = ObjectBoxStorageHelper<UserModel>(UserModel);
await storage.init();
```

### 3. Use Comprehensive Storage Operations

```dart
// ==================== CRUD Operations ====================

// Create single item
final user = UserModel(id: '1', name: 'John', email: 'john@example.com');
final createdUser = await storage.create(user);

// Create multiple items at once
final users = [user1, user2, user3];
final createdUsers = await storage.createAll(users);

// Read operations
final allUsers = await storage.getAll();
final userById = await storage.getById('1');
final specificUsers = await storage.getByIds(['1', '2', '3']);

// Update operations
final updatedUser = user.copyWith(name: 'John Doe');
await storage.update(updatedUser);
await storage.updateAll([user1, user2]); // Batch update

// Delete operations
await storage.delete('1');
await storage.deleteByIds(['2', '3']); // Batch delete
await storage.deleteAll(); // Clear all

// ==================== Query Operations ====================

// Search with custom logic
final searchResults = await storage.search('john');

// Pagination
final paginatedUsers = await storage.getPaginated(offset: 0, limit: 10);

// Custom filtering
final filteredUsers = await storage.getWhere((user) => user.age > 18);

// ==================== Utility Operations ====================

final count = await storage.count();
final exists = await storage.exists('1');
final isEmpty = await storage.isEmpty();
final firstUser = await storage.getFirst();
final lastUser = await storage.getLast();

// ==================== Database Operations ====================

// Database management
await storage.clearDatabase(); // Clear entire database
final dbInfo = await storage.getDatabaseInfo(); // Get database info

// Backup and restore
final backupData = await storage.backup();
await storage.restore(backupData);
```

## 🔄 Adding New Entities

To add a new entity (e.g., `ProductModel`):

1. **Create the entity** extending `BaseEntity`
2. **Create storage helper**: `ObjectBoxStorageHelper<ProductModel>(ProductModel)`
3. **Create data source**: `ProductObjectBoxDataSource`
4. **Register in DI**: Add to injection container

No changes needed to the base storage code!

## 🎯 Dependency Injection

```dart
// In injection_container.dart
static Future<void> init() async {
  // User storage
  final userStorageHelper = ObjectBoxStorageHelper<UserModel>(UserModel);
  await userStorageHelper.init();
  _getIt.registerLazySingleton(() => userStorageHelper);

  // Product storage (example)
  final productStorageHelper = ObjectBoxStorageHelper<ProductModel>(ProductModel);
  await productStorageHelper.init();
  _getIt.registerLazySingleton(() => productStorageHelper);

  // Data sources
  _getIt.registerLazySingleton(() => UserObjectBoxDataSource(_getIt()));
  _getIt.registerLazySingleton(() => ProductObjectBoxDataSource(_getIt()));
}
```

## 🔀 Swapping Storage Implementations

To swap from ObjectBox to another storage (e.g., Hive):

1. **Create new implementation**: `HiveStorageHelper<T> implements LocalStorage<T>`
2. **Update DI registration**: Replace `ObjectBoxStorageHelper` with `HiveStorageHelper`
3. **No other changes needed** - all data sources continue to work!

## 🧪 Testing

Easy to mock for testing:

```dart
class MockStorageHelper<T extends BaseEntity> implements LocalStorage<T> {
  final List<T> _items = [];

  @override
  Future<T> create(T item) async {
    _items.add(item);
    return item;
  }

  // Implement other methods...
}
```

## 🚀 Future Extensibility

This architecture supports:

- **Multiple storage backends** (ObjectBox, Hive, SQLite, etc.)
- **Multiple entity types** (Users, Products, Orders, etc.)
- **Custom search logic** per entity type
- **Easy testing** with mock implementations
- **Type safety** throughout the application
