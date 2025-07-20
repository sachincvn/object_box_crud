/// Generic interface for local storage operations
/// This provides a clean abstraction for any local storage implementation
/// Supports any data type: objects, lists, strings, maps, etc.
abstract class LocalStorage<T> {
  /// Initialize the storage
  Future<void> init();

  // ==================== CRUD Operations ====================

  /// Create/Insert a new item
  Future<T> create(T item);

  /// Create multiple items at once
  Future<List<T>> createAll(List<T> items);

  /// Get all items
  Future<List<T>> getAll();

  /// Get item by ID
  Future<T?> getById(String id);

  /// Get multiple items by IDs
  Future<List<T>> getByIds(List<String> ids);

  /// Update an existing item
  Future<T> update(T item);

  /// Update multiple items at once
  Future<List<T>> updateAll(List<T> items);

  /// Delete item by ID
  Future<void> delete(String id);

  /// Delete multiple items by IDs
  Future<void> deleteByIds(List<String> ids);

  /// Delete all items
  Future<void> deleteAll();

  // ==================== Query Operations ====================

  /// Search items with query (implementation-specific)
  Future<List<T>> search(String query);

  /// Get items with pagination
  Future<List<T>> getPaginated({
    int offset = 0,
    int limit = 50,
  });

  /// Get items with custom filter
  Future<List<T>> getWhere(bool Function(T item) predicate);

  // ==================== Utility Operations ====================

  /// Get count of items
  Future<int> count();

  /// Check if item exists by ID
  Future<bool> exists(String id);

  /// Check if storage is empty
  Future<bool> isEmpty();

  /// Get first item (if any)
  Future<T?> getFirst();

  /// Get last item (if any)
  Future<T?> getLast();

  // ==================== Database Operations ====================

  /// Clear entire database/storage
  Future<void> clearDatabase();

  /// Get database size/info
  Future<Map<String, dynamic>> getDatabaseInfo();

  /// Backup data to external storage
  Future<String> backup();

  /// Restore data from backup
  Future<void> restore(String backupData);

  // ==================== Resource Management ====================

  /// Close/dispose storage resources
  Future<void> close();

  /// Check if storage is initialized
  bool get isInitialized;
}
