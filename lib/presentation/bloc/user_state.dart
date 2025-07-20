import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/user.dart';

part 'user_state.freezed.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.initial() = UserInitial;

  const factory UserState.loading() = UserLoading;

  const factory UserState.loaded({
    required List<User> users,
    @Default(false) bool isSearching,
    @Default('') String searchQuery,
  }) = UserLoaded;

  const factory UserState.error({
    required String message,
  }) = UserError;

  const factory UserState.userCreated({
    required User user,
  }) = UserCreated;

  const factory UserState.userUpdated({
    required User user,
  }) = UserUpdated;

  const factory UserState.userDeleted({
    required String userId,
  }) = UserDeleted;
}
