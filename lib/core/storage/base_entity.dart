/// Storage configuration for entities
/// This provides the necessary functions for storage operations without inheritance
class StorageConfig<T> {
  /// Function to extract ID from the data
  final String Function(T data) idExtractor;

  /// Function to search within the data
  final bool Function(T data, String query) searchFunction;

  StorageConfig({
    required this.idExtractor,
    required this.searchFunction,
  });
}
