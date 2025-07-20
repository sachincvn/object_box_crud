import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecases/create_user.dart';
import '../../domain/usecases/get_all_users.dart';
import '../../domain/usecases/update_user.dart';
import '../../domain/usecases/delete_user.dart';
import '../../domain/usecases/search_users.dart';

import 'user_event.dart';
import 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final CreateUser _createUser;
  final GetAllUsers _getAllUsers;
  final UpdateUser _updateUser;
  final DeleteUser _deleteUser;
  final SearchUsers _searchUsers;

  UserBloc({
    required CreateUser createUser,
    required GetAllUsers getAllUsers,
    required UpdateUser updateUser,
    required DeleteUser deleteUser,
    required SearchUsers searchUsers,
  })  : _createUser = createUser,
        _getAllUsers = getAllUsers,
        _updateUser = updateUser,
        _deleteUser = deleteUser,
        _searchUsers = searchUsers,
        super(const UserState.initial()) {
    on<LoadUsers>(_onLoadUsers);
    on<CreateUserEvent>(_onCreateUser);
    on<UpdateUserEvent>(_onUpdateUser);
    on<DeleteUserEvent>(_onDeleteUser);
    on<SearchUsersEvent>(_onSearchUsers);
    on<ClearSearchEvent>(_onClearSearch);
    on<RefreshUsersEvent>(_onRefreshUsers);
  }

  Future<void> _onLoadUsers(LoadUsers event, Emitter<UserState> emit) async {
    emit(const UserState.loading());

    final result = await _getAllUsers();

    result.fold(
      (failure) => emit(UserState.error(message: failure.message)),
      (users) => emit(UserState.loaded(users: users)),
    );
  }

  Future<void> _onCreateUser(CreateUserEvent event, Emitter<UserState> emit) async {
    emit(const UserState.loading());

    final result = await _createUser(event.user);

    result.fold(
      (failure) => emit(UserState.error(message: failure.message)),
      (user) {
        emit(UserState.userCreated(user: user));
        // Reload users after creation
        add(const LoadUsers());
      },
    );
  }

  Future<void> _onUpdateUser(UpdateUserEvent event, Emitter<UserState> emit) async {
    emit(const UserState.loading());

    final result = await _updateUser(event.user);

    result.fold(
      (failure) => emit(UserState.error(message: failure.message)),
      (user) {
        emit(UserState.userUpdated(user: user));
        // Reload users after update
        add(const LoadUsers());
      },
    );
  }

  Future<void> _onDeleteUser(DeleteUserEvent event, Emitter<UserState> emit) async {
    emit(const UserState.loading());

    final result = await _deleteUser(event.id);

    result.fold(
      (failure) => emit(UserState.error(message: failure.message)),
      (_) {
        emit(UserState.userDeleted(userId: event.id));
        // Reload users after deletion
        add(const LoadUsers());
      },
    );
  }

  Future<void> _onSearchUsers(SearchUsersEvent event, Emitter<UserState> emit) async {
    if (event.query.isEmpty) {
      add(const ClearSearchEvent());
      return;
    }

    emit(const UserState.loading());

    final result = await _searchUsers(event.query);

    result.fold(
      (failure) => emit(UserState.error(message: failure.message)),
      (users) => emit(UserState.loaded(
        users: users,
        isSearching: true,
        searchQuery: event.query,
      )),
    );
  }

  Future<void> _onClearSearch(ClearSearchEvent event, Emitter<UserState> emit) async {
    add(const LoadUsers());
  }

  Future<void> _onRefreshUsers(RefreshUsersEvent event, Emitter<UserState> emit) async {
    add(const LoadUsers());
  }
}
