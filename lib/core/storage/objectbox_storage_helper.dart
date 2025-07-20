import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

import 'local_storage.dart';
import '../../objectbox.g.dart';

/// Configuration class for storage operations
class StorageConfig<T> {
  /// Function to extract ID from entity
  final String Function(T) idExtractor;

  /// Function to search entities
  final bool Function(T, String) searchFunction;

  const StorageConfig({
    required this.idExtractor,
    required this.searchFunction,
  });
}

/// Generic ObjectBox implementation of LocalStorage
/// This acts as a helper for local storage operations using ObjectBox
/// Works directly with entity types without wrapper pattern
class ObjectBoxStorageHelper<T> implements LocalStorage<T> {
  late Store _store;
  late Box<T> _box;
  bool _isInitialized = false;

  /// The entity type this helper manages
  final Type entityType;

  /// Storage configuration with helper functions
  final StorageConfig<T> config;

  /// Constructor requires the entity type and storage configuration
  ObjectBoxStorageHelper({
    required this.entityType,
    required this.config,
  });

  /// Get the ObjectBox store instance
  Store get store => _store;

  /// Get the ObjectBox box instance
  Box<T> get box => _box;

  @override
  bool get isInitialized => _isInitialized;

  @override
  Future<void> init() async {
    if (_isInitialized) return;

    try {
      // Get application documents directory
      final docsDir = await getApplicationDocumentsDirectory();

      // Create ObjectBox store
      _store = await openStore(
        directory: p.join(docsDir.path, "objectbox-crud"),
      );

      // Get the box for the entity type T
      _box = _store.box<T>();

      _isInitialized = true;
    } catch (e) {
      throw Exception('Failed to initialize ObjectBox storage: $e');
    }
  }

  // ==================== CRUD Operations ====================

  @override
  Future<T> create(T item) async {
    _ensureInitialized();
    try {
      _box.put(item);
      return item;
    } catch (e) {
      throw Exception('Failed to create ${entityType.toString()}: $e');
    }
  }

  @override
  Future<List<T>> createAll(List<T> items) async {
    _ensureInitialized();
    try {
      _box.putMany(items);
      return items;
    } catch (e) {
      throw Exception('Failed to create multiple ${entityType.toString()}s: $e');
    }
  }

  @override
  Future<List<T>> getAll() async {
    _ensureInitialized();
    try {
      return _box.getAll();
    } catch (e) {
      throw Exception('Failed to get all ${entityType.toString()}s: $e');
    }
  }

  @override
  Future<T?> getById(String id) async {
    _ensureInitialized();
    try {
      // Generic approach - iterate through all items to find by business ID
      final allItems = _box.getAll();
      for (final item in allItems) {
        if (config.idExtractor(item) == id) {
          return item;
        }
      }
      return null;
    } catch (e) {
      throw Exception('Failed to get ${entityType.toString()} by id: $e');
    }
  }

  @override
  Future<List<T>> getByIds(List<String> ids) async {
    _ensureInitialized();
    try {
      final allItems = _box.getAll();
      return allItems.where((item) => ids.contains(config.idExtractor(item))).toList();
    } catch (e) {
      throw Exception('Failed to get ${entityType.toString()}s by ids: $e');
    }
  }

  @override
  Future<T> update(T item) async {
    _ensureInitialized();
    try {
      // For updates, we need to find the existing item and preserve its objectBoxId
      final itemId = config.idExtractor(item);
      final allItems = _box.getAll();

      // Find existing item by business ID
      T? existingItem;
      for (final existing in allItems) {
        if (config.idExtractor(existing) == itemId) {
          existingItem = existing;
          break;
        }
      }

      if (existingItem != null) {
        // Found existing item, preserve its objectBoxId
        final dynamic existingDynamic = existingItem;
        final dynamic newDynamic = item;

        final int existingObjectBoxId = existingDynamic.objectBoxId ?? 0;

        try {
          if (existingObjectBoxId > 0) {
            // Set the objectBoxId on the new item
            newDynamic.objectBoxId = existingObjectBoxId;
          }

          _box.put(item);
          return item;
        } catch (e) {
          // If direct assignment fails, try to remove and re-add
          if (existingObjectBoxId > 0) {
            _box.remove(existingObjectBoxId);
          }
          _box.put(item);
          return item;
        }
      } else {
        // Item not found, create new
        _box.put(item);
        return item;
      }
    } catch (e) {
      throw Exception('Failed to update ${entityType.toString()}: $e');
    }
  }

  @override
  Future<List<T>> updateAll(List<T> items) async {
    _ensureInitialized();
    try {
      final updatedItems = <T>[];

      for (final item in items) {
        final updatedItem = await update(item);
        updatedItems.add(updatedItem);
      }

      return updatedItems;
    } catch (e) {
      throw Exception('Failed to update multiple ${entityType.toString()}s: $e');
    }
  }

  @override
  Future<void> delete(String id) async {
    _ensureInitialized();
    try {
      final allItems = _box.getAll();
      for (final item in allItems) {
        if (config.idExtractor(item) == id) {
          // For UserModel, we need to access objectBoxId property
          final dynamic dynamicItem = item;
          if (dynamicItem.objectBoxId != null) {
            _box.remove(dynamicItem.objectBoxId);
          }
          return;
        }
      }
    } catch (e) {
      throw Exception('Failed to delete ${entityType.toString()}: $e');
    }
  }

  @override
  Future<void> deleteByIds(List<String> ids) async {
    _ensureInitialized();
    try {
      final allItems = _box.getAll();
      final itemsToDelete = allItems.where((item) => ids.contains(config.idExtractor(item))).toList();
      final objectBoxIds = itemsToDelete
          .map((item) {
            final dynamic dynamicItem = item;
            if (dynamicItem.objectBoxId != null) {
              return dynamicItem.objectBoxId as int;
            }
            return 0;
          })
          .where((id) => id != 0)
          .toList();
      _box.removeMany(objectBoxIds);
    } catch (e) {
      throw Exception('Failed to delete multiple ${entityType.toString()}s: $e');
    }
  }

  @override
  Future<void> deleteAll() async {
    _ensureInitialized();
    try {
      _box.removeAll();
    } catch (e) {
      throw Exception('Failed to delete all ${entityType.toString()}s: $e');
    }
  }

  // ==================== Query Operations ====================

  @override
  Future<List<T>> search(String query) async {
    _ensureInitialized();
    try {
      final allItems = _box.getAll();
      return allItems.where((item) => config.searchFunction(item, query)).toList();
    } catch (e) {
      throw Exception('Failed to search ${entityType.toString()}s: $e');
    }
  }

  @override
  Future<List<T>> getPaginated({int offset = 0, int limit = 50}) async {
    _ensureInitialized();
    try {
      final allItems = _box.getAll();
      final endIndex = (offset + limit).clamp(0, allItems.length);
      return allItems.sublist(offset.clamp(0, allItems.length), endIndex);
    } catch (e) {
      throw Exception('Failed to get paginated ${entityType.toString()}s: $e');
    }
  }

  @override
  Future<List<T>> getWhere(bool Function(T item) predicate) async {
    _ensureInitialized();
    try {
      final allItems = _box.getAll();
      return allItems.where(predicate).toList();
    } catch (e) {
      throw Exception('Failed to get filtered ${entityType.toString()}s: $e');
    }
  }

  // ==================== Utility Operations ====================

  @override
  Future<int> count() async {
    _ensureInitialized();
    try {
      return _box.count();
    } catch (e) {
      throw Exception('Failed to get ${entityType.toString()} count: $e');
    }
  }

  @override
  Future<bool> exists(String id) async {
    _ensureInitialized();
    try {
      final item = await getById(id);
      return item != null;
    } catch (e) {
      throw Exception('Failed to check if ${entityType.toString()} exists: $e');
    }
  }

  @override
  Future<bool> isEmpty() async {
    _ensureInitialized();
    try {
      return _box.isEmpty();
    } catch (e) {
      throw Exception('Failed to check if ${entityType.toString()} storage is empty: $e');
    }
  }

  @override
  Future<T?> getFirst() async {
    _ensureInitialized();
    try {
      final allItems = _box.getAll();
      return allItems.isNotEmpty ? allItems.first : null;
    } catch (e) {
      throw Exception('Failed to get first ${entityType.toString()}: $e');
    }
  }

  @override
  Future<T?> getLast() async {
    _ensureInitialized();
    try {
      final allItems = _box.getAll();
      return allItems.isNotEmpty ? allItems.last : null;
    } catch (e) {
      throw Exception('Failed to get last ${entityType.toString()}: $e');
    }
  }

  // ==================== Database Operations ====================

  @override
  Future<void> clearDatabase() async {
    _ensureInitialized();
    try {
      _box.removeAll();
    } catch (e) {
      throw Exception('Failed to clear ${entityType.toString()} database: $e');
    }
  }

  @override
  Future<Map<String, dynamic>> getDatabaseInfo() async {
    _ensureInitialized();
    try {
      final count = await this.count();
      final isEmpty = await this.isEmpty();

      return {
        'entityType': entityType.toString(),
        'count': count,
        'isEmpty': isEmpty,
        'isInitialized': _isInitialized,
        'storePath': _store.directoryPath,
      };
    } catch (e) {
      throw Exception('Failed to get ${entityType.toString()} database info: $e');
    }
  }

  @override
  Future<String> backup() async {
    _ensureInitialized();
    try {
      final allItems = _box.getAll();
      // Convert to JSON-like string representation
      // Note: This is a basic implementation - you might want to use proper JSON serialization
      return allItems.toString();
    } catch (e) {
      throw Exception('Failed to backup ${entityType.toString()} data: $e');
    }
  }

  @override
  Future<void> restore(String backupData) async {
    _ensureInitialized();
    try {
      // This is a placeholder implementation
      // In a real scenario, you'd parse the backupData and restore items
      throw UnimplementedError('Restore functionality needs custom implementation based on your data format');
    } catch (e) {
      throw Exception('Failed to restore ${entityType.toString()} data: $e');
    }
  }

  // ==================== Resource Management ====================

  @override
  Future<void> close() async {
    if (_isInitialized) {
      try {
        _store.close();
        _isInitialized = false;
      } catch (e) {
        throw Exception('Failed to close ObjectBox storage: $e');
      }
    }
  }

  /// Ensure storage is initialized before operations
  void _ensureInitialized() {
    if (!_isInitialized) {
      throw Exception('ObjectBox storage not initialized. Call init() first.');
    }
  }
}
