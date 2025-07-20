# Flutter CRUD App with Clean Architecture

A beautiful Flutter CRUD application built with clean architecture, featuring:

## 🏗️ Architecture & Technologies

- **Clean Architecture** - Separation of concerns with domain, data, and presentation layers
- **BLoC Pattern** - State management with flutter_bloc and freezed
- **ObjectBox** - Fast local database with sync capabilities
- **GetIt** - Dependency injection with custom injector pattern
- **Material 3** - Modern UI design with beautiful components
- **Freezed** - Code generation for immutable data classes
- **Equatable** - Value equality for entities

## 🚀 Features

- ✅ Create, Read, Update, Delete users
- 🔍 Real-time search functionality
- 📱 Beautiful Material 3 UI
- 🏗️ Clean architecture with abstraction layers
- 💾 Local storage with ObjectBox
- 🔄 Sync capabilities (ObjectBox built-in)
- 🎯 Type-safe code generation
- 🧪 Easy to test and maintain

## 🛠️ Setup Instructions

1. **Install dependencies:**

   ```bash
   flutter pub get
   ```

2. **Generate code:**

   ```bash
   flutter packages pub run build_runner build
   ```

3. **Run the app:**
   ```bash
   flutter run
   ```

## 📁 Project Structure

```
lib/
├── core/
│   ├── constants/          # App constants
│   ├── error/             # Error handling
│   ├── services/          # Dependency injection
│   └── utils/             # Utilities and typedefs
├── data/
│   ├── datasources/       # ObjectBox data sources
│   ├── models/           # ObjectBox entity models
│   └── repositories/     # Repository implementations
├── domain/
│   ├── entities/         # Domain entities
│   ├── repositories/     # Repository interfaces
│   └── usecases/        # Business logic
└── presentation/
    ├── bloc/            # BLoC state management
    ├── pages/           # UI pages
    └── widgets/         # Reusable widgets
```

## 🔧 Key Components

### Storage Abstraction Layer

The app uses a sophisticated, generic, and scalable storage abstraction:

**Generic Base Layer:**

- `LocalStorage<T>` - Generic storage interface for any entity type
- `BaseEntity` - Base interface that all entities must implement
- `ObjectBoxStorageHelper<T>` - Generic ObjectBox implementation with full type safety

**Domain-Specific Layer:**

- `UserLocalDataSource` - User-specific storage operations interface
- `UserObjectBoxDataSource` - User storage implementation using generic ObjectBox helper

**Key Benefits:**

- ✅ **Generic & Reusable**: Works with any entity type (User, Product, Order, etc.)
- ✅ **Type-Safe**: Full type safety with generics throughout
- ✅ **Plug-and-Play**: Easy to swap ObjectBox with Hive, SQLite, etc.
- ✅ **Scalable**: Add new entities without changing storage code
- ✅ **Clean Architecture**: Clear separation between storage and business logic
- ✅ **Easy Testing**: Simple to mock with generic interfaces

### Dependency Injection

Custom injector pattern with GetIt:

```dart
// Easy access to dependencies
final userBloc = Injector.get<UserBloc>();
```

### State Management

BLoC pattern with freezed for type-safe states and events:

```dart
// Type-safe events
context.read<UserBloc>().add(const LoadUsers());

// Pattern matching states
state.when(
  loading: () => CircularProgressIndicator(),
  loaded: (users) => UserList(users),
  error: (message) => ErrorWidget(message),
);
```

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
