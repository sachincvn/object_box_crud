import 'package:dartz/dartz.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/user_repository.dart';
import '../../core/error/failures.dart';
import '../../core/utils/typedef.dart';
import '../datasources/user_local_data_source.dart';
import '../models/user_model.dart';

class UserRepositoryImpl implements UserRepository {
  const UserRepositoryImpl(this._localDataSource);

  final UserLocalDataSource _localDataSource;

  @override
  ResultFuture<User> createUser(User user) async {
    try {
      final userModel = UserModel.fromEntity(user);
      final result = await _localDataSource.createUser(userModel);
      return Right(result.toEntity());
    } catch (e) {
      return Left(CacheFailure(message: e.toString()));
    }
  }

  @override
  ResultFuture<List<User>> getAllUsers() async {
    try {
      final result = await _localDataSource.getAllUsers();
      return Right(result.map((model) => model.toEntity()).toList());
    } catch (e) {
      return Left(CacheFailure(message: e.toString()));
    }
  }

  @override
  ResultFuture<User> getUserById(String id) async {
    try {
      final result = await _localDataSource.getUserById(id);
      if (result != null) {
        return Right(result.toEntity());
      } else {
        return const Left(CacheFailure(message: 'User not found'));
      }
    } catch (e) {
      return Left(CacheFailure(message: e.toString()));
    }
  }

  @override
  ResultFuture<List<User>> searchUsers(String query) async {
    try {
      final result = await _localDataSource.searchUsers(query);
      return Right(result.map((model) => model.toEntity()).toList());
    } catch (e) {
      return Left(CacheFailure(message: e.toString()));
    }
  }

  @override
  ResultFuture<User> updateUser(User user) async {
    try {
      // First, get the existing user to preserve all fields
      final existingUserResult = await getUserById(user.id);

      return existingUserResult.fold(
        (failure) => Left(failure),
        (existingUser) async {
          // Get the existing UserModel to preserve all data
          final existingUserModel = await _localDataSource.getUserById(user.id);

          if (existingUserModel == null) {
            // User doesn't exist, create new one
            final userModel = UserModel.fromEntity(user);
            final result = await _localDataSource.updateUser(userModel);
            return Right(result.toEntity());
          } else {
            // User exists, update only the fields from the domain entity
            final updatedUserModel = existingUserModel.copyWith(
              name: user.name,
              email: user.email,
              phone: user.phone,
              updatedAt: user.updatedAt ?? DateTime.now(),
            );

            final result = await _localDataSource.updateUser(updatedUserModel);
            return Right(result.toEntity());
          }
        },
      );
    } catch (e) {
      return Left(CacheFailure(message: e.toString()));
    }
  }

  @override
  ResultVoid deleteUser(String id) async {
    try {
      await _localDataSource.deleteUser(id);
      return const Right(null);
    } catch (e) {
      return Left(CacheFailure(message: e.toString()));
    }
  }

  @override
  ResultVoid deleteAllUsers() async {
    try {
      await _localDataSource.deleteAllUsers();
      return const Right(null);
    } catch (e) {
      return Left(CacheFailure(message: e.toString()));
    }
  }

  @override
  ResultFuture<int> getUserCount() async {
    try {
      final result = await _localDataSource.getUserCount();
      return Right(result);
    } catch (e) {
      return Left(CacheFailure(message: e.toString()));
    }
  }

  @override
  ResultFuture<bool> userExists(String id) async {
    try {
      final result = await _localDataSource.userExists(id);
      return Right(result);
    } catch (e) {
      return Left(CacheFailure(message: e.toString()));
    }
  }
}
