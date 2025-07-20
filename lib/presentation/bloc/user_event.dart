import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/user.dart';

part 'user_event.freezed.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.loadUsers() = LoadUsers;
  const factory UserEvent.createUser(User user) = CreateUserEvent;
  const factory UserEvent.updateUser(User user) = UpdateUserEvent;
  const factory UserEvent.deleteUser(String id) = DeleteUserEvent;
  const factory UserEvent.searchUsers(String query) = SearchUsersEvent;
  const factory UserEvent.clearSearch() = ClearSearchEvent;
  const factory UserEvent.refreshUsers() = RefreshUsersEvent;
}
