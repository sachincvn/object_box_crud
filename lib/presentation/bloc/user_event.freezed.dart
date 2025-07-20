// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadUsers,
    required TResult Function(User user) createUser,
    required TResult Function(User user) updateUser,
    required TResult Function(String id) deleteUser,
    required TResult Function(String query) searchUsers,
    required TResult Function() clearSearch,
    required TResult Function() refreshUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadUsers,
    TResult? Function(User user)? createUser,
    TResult? Function(User user)? updateUser,
    TResult? Function(String id)? deleteUser,
    TResult? Function(String query)? searchUsers,
    TResult? Function()? clearSearch,
    TResult? Function()? refreshUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadUsers,
    TResult Function(User user)? createUser,
    TResult Function(User user)? updateUser,
    TResult Function(String id)? deleteUser,
    TResult Function(String query)? searchUsers,
    TResult Function()? clearSearch,
    TResult Function()? refreshUsers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUsers value) loadUsers,
    required TResult Function(CreateUserEvent value) createUser,
    required TResult Function(UpdateUserEvent value) updateUser,
    required TResult Function(DeleteUserEvent value) deleteUser,
    required TResult Function(SearchUsersEvent value) searchUsers,
    required TResult Function(ClearSearchEvent value) clearSearch,
    required TResult Function(RefreshUsersEvent value) refreshUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadUsers value)? loadUsers,
    TResult? Function(CreateUserEvent value)? createUser,
    TResult? Function(UpdateUserEvent value)? updateUser,
    TResult? Function(DeleteUserEvent value)? deleteUser,
    TResult? Function(SearchUsersEvent value)? searchUsers,
    TResult? Function(ClearSearchEvent value)? clearSearch,
    TResult? Function(RefreshUsersEvent value)? refreshUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUsers value)? loadUsers,
    TResult Function(CreateUserEvent value)? createUser,
    TResult Function(UpdateUserEvent value)? updateUser,
    TResult Function(DeleteUserEvent value)? deleteUser,
    TResult Function(SearchUsersEvent value)? searchUsers,
    TResult Function(ClearSearchEvent value)? clearSearch,
    TResult Function(RefreshUsersEvent value)? refreshUsers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res, UserEvent>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res, $Val extends UserEvent>
    implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadUsersImplCopyWith<$Res> {
  factory _$$LoadUsersImplCopyWith(
          _$LoadUsersImpl value, $Res Function(_$LoadUsersImpl) then) =
      __$$LoadUsersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadUsersImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$LoadUsersImpl>
    implements _$$LoadUsersImplCopyWith<$Res> {
  __$$LoadUsersImplCopyWithImpl(
      _$LoadUsersImpl _value, $Res Function(_$LoadUsersImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadUsersImpl implements LoadUsers {
  const _$LoadUsersImpl();

  @override
  String toString() {
    return 'UserEvent.loadUsers()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadUsersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadUsers,
    required TResult Function(User user) createUser,
    required TResult Function(User user) updateUser,
    required TResult Function(String id) deleteUser,
    required TResult Function(String query) searchUsers,
    required TResult Function() clearSearch,
    required TResult Function() refreshUsers,
  }) {
    return loadUsers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadUsers,
    TResult? Function(User user)? createUser,
    TResult? Function(User user)? updateUser,
    TResult? Function(String id)? deleteUser,
    TResult? Function(String query)? searchUsers,
    TResult? Function()? clearSearch,
    TResult? Function()? refreshUsers,
  }) {
    return loadUsers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadUsers,
    TResult Function(User user)? createUser,
    TResult Function(User user)? updateUser,
    TResult Function(String id)? deleteUser,
    TResult Function(String query)? searchUsers,
    TResult Function()? clearSearch,
    TResult Function()? refreshUsers,
    required TResult orElse(),
  }) {
    if (loadUsers != null) {
      return loadUsers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUsers value) loadUsers,
    required TResult Function(CreateUserEvent value) createUser,
    required TResult Function(UpdateUserEvent value) updateUser,
    required TResult Function(DeleteUserEvent value) deleteUser,
    required TResult Function(SearchUsersEvent value) searchUsers,
    required TResult Function(ClearSearchEvent value) clearSearch,
    required TResult Function(RefreshUsersEvent value) refreshUsers,
  }) {
    return loadUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadUsers value)? loadUsers,
    TResult? Function(CreateUserEvent value)? createUser,
    TResult? Function(UpdateUserEvent value)? updateUser,
    TResult? Function(DeleteUserEvent value)? deleteUser,
    TResult? Function(SearchUsersEvent value)? searchUsers,
    TResult? Function(ClearSearchEvent value)? clearSearch,
    TResult? Function(RefreshUsersEvent value)? refreshUsers,
  }) {
    return loadUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUsers value)? loadUsers,
    TResult Function(CreateUserEvent value)? createUser,
    TResult Function(UpdateUserEvent value)? updateUser,
    TResult Function(DeleteUserEvent value)? deleteUser,
    TResult Function(SearchUsersEvent value)? searchUsers,
    TResult Function(ClearSearchEvent value)? clearSearch,
    TResult Function(RefreshUsersEvent value)? refreshUsers,
    required TResult orElse(),
  }) {
    if (loadUsers != null) {
      return loadUsers(this);
    }
    return orElse();
  }
}

abstract class LoadUsers implements UserEvent {
  const factory LoadUsers() = _$LoadUsersImpl;
}

/// @nodoc
abstract class _$$CreateUserEventImplCopyWith<$Res> {
  factory _$$CreateUserEventImplCopyWith(_$CreateUserEventImpl value,
          $Res Function(_$CreateUserEventImpl) then) =
      __$$CreateUserEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$CreateUserEventImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$CreateUserEventImpl>
    implements _$$CreateUserEventImplCopyWith<$Res> {
  __$$CreateUserEventImplCopyWithImpl(
      _$CreateUserEventImpl _value, $Res Function(_$CreateUserEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$CreateUserEventImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$CreateUserEventImpl implements CreateUserEvent {
  const _$CreateUserEventImpl(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'UserEvent.createUser(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateUserEventImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateUserEventImplCopyWith<_$CreateUserEventImpl> get copyWith =>
      __$$CreateUserEventImplCopyWithImpl<_$CreateUserEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadUsers,
    required TResult Function(User user) createUser,
    required TResult Function(User user) updateUser,
    required TResult Function(String id) deleteUser,
    required TResult Function(String query) searchUsers,
    required TResult Function() clearSearch,
    required TResult Function() refreshUsers,
  }) {
    return createUser(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadUsers,
    TResult? Function(User user)? createUser,
    TResult? Function(User user)? updateUser,
    TResult? Function(String id)? deleteUser,
    TResult? Function(String query)? searchUsers,
    TResult? Function()? clearSearch,
    TResult? Function()? refreshUsers,
  }) {
    return createUser?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadUsers,
    TResult Function(User user)? createUser,
    TResult Function(User user)? updateUser,
    TResult Function(String id)? deleteUser,
    TResult Function(String query)? searchUsers,
    TResult Function()? clearSearch,
    TResult Function()? refreshUsers,
    required TResult orElse(),
  }) {
    if (createUser != null) {
      return createUser(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUsers value) loadUsers,
    required TResult Function(CreateUserEvent value) createUser,
    required TResult Function(UpdateUserEvent value) updateUser,
    required TResult Function(DeleteUserEvent value) deleteUser,
    required TResult Function(SearchUsersEvent value) searchUsers,
    required TResult Function(ClearSearchEvent value) clearSearch,
    required TResult Function(RefreshUsersEvent value) refreshUsers,
  }) {
    return createUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadUsers value)? loadUsers,
    TResult? Function(CreateUserEvent value)? createUser,
    TResult? Function(UpdateUserEvent value)? updateUser,
    TResult? Function(DeleteUserEvent value)? deleteUser,
    TResult? Function(SearchUsersEvent value)? searchUsers,
    TResult? Function(ClearSearchEvent value)? clearSearch,
    TResult? Function(RefreshUsersEvent value)? refreshUsers,
  }) {
    return createUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUsers value)? loadUsers,
    TResult Function(CreateUserEvent value)? createUser,
    TResult Function(UpdateUserEvent value)? updateUser,
    TResult Function(DeleteUserEvent value)? deleteUser,
    TResult Function(SearchUsersEvent value)? searchUsers,
    TResult Function(ClearSearchEvent value)? clearSearch,
    TResult Function(RefreshUsersEvent value)? refreshUsers,
    required TResult orElse(),
  }) {
    if (createUser != null) {
      return createUser(this);
    }
    return orElse();
  }
}

abstract class CreateUserEvent implements UserEvent {
  const factory CreateUserEvent(final User user) = _$CreateUserEventImpl;

  User get user;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateUserEventImplCopyWith<_$CreateUserEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateUserEventImplCopyWith<$Res> {
  factory _$$UpdateUserEventImplCopyWith(_$UpdateUserEventImpl value,
          $Res Function(_$UpdateUserEventImpl) then) =
      __$$UpdateUserEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$UpdateUserEventImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UpdateUserEventImpl>
    implements _$$UpdateUserEventImplCopyWith<$Res> {
  __$$UpdateUserEventImplCopyWithImpl(
      _$UpdateUserEventImpl _value, $Res Function(_$UpdateUserEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$UpdateUserEventImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$UpdateUserEventImpl implements UpdateUserEvent {
  const _$UpdateUserEventImpl(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'UserEvent.updateUser(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserEventImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserEventImplCopyWith<_$UpdateUserEventImpl> get copyWith =>
      __$$UpdateUserEventImplCopyWithImpl<_$UpdateUserEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadUsers,
    required TResult Function(User user) createUser,
    required TResult Function(User user) updateUser,
    required TResult Function(String id) deleteUser,
    required TResult Function(String query) searchUsers,
    required TResult Function() clearSearch,
    required TResult Function() refreshUsers,
  }) {
    return updateUser(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadUsers,
    TResult? Function(User user)? createUser,
    TResult? Function(User user)? updateUser,
    TResult? Function(String id)? deleteUser,
    TResult? Function(String query)? searchUsers,
    TResult? Function()? clearSearch,
    TResult? Function()? refreshUsers,
  }) {
    return updateUser?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadUsers,
    TResult Function(User user)? createUser,
    TResult Function(User user)? updateUser,
    TResult Function(String id)? deleteUser,
    TResult Function(String query)? searchUsers,
    TResult Function()? clearSearch,
    TResult Function()? refreshUsers,
    required TResult orElse(),
  }) {
    if (updateUser != null) {
      return updateUser(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUsers value) loadUsers,
    required TResult Function(CreateUserEvent value) createUser,
    required TResult Function(UpdateUserEvent value) updateUser,
    required TResult Function(DeleteUserEvent value) deleteUser,
    required TResult Function(SearchUsersEvent value) searchUsers,
    required TResult Function(ClearSearchEvent value) clearSearch,
    required TResult Function(RefreshUsersEvent value) refreshUsers,
  }) {
    return updateUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadUsers value)? loadUsers,
    TResult? Function(CreateUserEvent value)? createUser,
    TResult? Function(UpdateUserEvent value)? updateUser,
    TResult? Function(DeleteUserEvent value)? deleteUser,
    TResult? Function(SearchUsersEvent value)? searchUsers,
    TResult? Function(ClearSearchEvent value)? clearSearch,
    TResult? Function(RefreshUsersEvent value)? refreshUsers,
  }) {
    return updateUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUsers value)? loadUsers,
    TResult Function(CreateUserEvent value)? createUser,
    TResult Function(UpdateUserEvent value)? updateUser,
    TResult Function(DeleteUserEvent value)? deleteUser,
    TResult Function(SearchUsersEvent value)? searchUsers,
    TResult Function(ClearSearchEvent value)? clearSearch,
    TResult Function(RefreshUsersEvent value)? refreshUsers,
    required TResult orElse(),
  }) {
    if (updateUser != null) {
      return updateUser(this);
    }
    return orElse();
  }
}

abstract class UpdateUserEvent implements UserEvent {
  const factory UpdateUserEvent(final User user) = _$UpdateUserEventImpl;

  User get user;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateUserEventImplCopyWith<_$UpdateUserEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteUserEventImplCopyWith<$Res> {
  factory _$$DeleteUserEventImplCopyWith(_$DeleteUserEventImpl value,
          $Res Function(_$DeleteUserEventImpl) then) =
      __$$DeleteUserEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DeleteUserEventImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$DeleteUserEventImpl>
    implements _$$DeleteUserEventImplCopyWith<$Res> {
  __$$DeleteUserEventImplCopyWithImpl(
      _$DeleteUserEventImpl _value, $Res Function(_$DeleteUserEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteUserEventImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteUserEventImpl implements DeleteUserEvent {
  const _$DeleteUserEventImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'UserEvent.deleteUser(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteUserEventImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteUserEventImplCopyWith<_$DeleteUserEventImpl> get copyWith =>
      __$$DeleteUserEventImplCopyWithImpl<_$DeleteUserEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadUsers,
    required TResult Function(User user) createUser,
    required TResult Function(User user) updateUser,
    required TResult Function(String id) deleteUser,
    required TResult Function(String query) searchUsers,
    required TResult Function() clearSearch,
    required TResult Function() refreshUsers,
  }) {
    return deleteUser(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadUsers,
    TResult? Function(User user)? createUser,
    TResult? Function(User user)? updateUser,
    TResult? Function(String id)? deleteUser,
    TResult? Function(String query)? searchUsers,
    TResult? Function()? clearSearch,
    TResult? Function()? refreshUsers,
  }) {
    return deleteUser?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadUsers,
    TResult Function(User user)? createUser,
    TResult Function(User user)? updateUser,
    TResult Function(String id)? deleteUser,
    TResult Function(String query)? searchUsers,
    TResult Function()? clearSearch,
    TResult Function()? refreshUsers,
    required TResult orElse(),
  }) {
    if (deleteUser != null) {
      return deleteUser(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUsers value) loadUsers,
    required TResult Function(CreateUserEvent value) createUser,
    required TResult Function(UpdateUserEvent value) updateUser,
    required TResult Function(DeleteUserEvent value) deleteUser,
    required TResult Function(SearchUsersEvent value) searchUsers,
    required TResult Function(ClearSearchEvent value) clearSearch,
    required TResult Function(RefreshUsersEvent value) refreshUsers,
  }) {
    return deleteUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadUsers value)? loadUsers,
    TResult? Function(CreateUserEvent value)? createUser,
    TResult? Function(UpdateUserEvent value)? updateUser,
    TResult? Function(DeleteUserEvent value)? deleteUser,
    TResult? Function(SearchUsersEvent value)? searchUsers,
    TResult? Function(ClearSearchEvent value)? clearSearch,
    TResult? Function(RefreshUsersEvent value)? refreshUsers,
  }) {
    return deleteUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUsers value)? loadUsers,
    TResult Function(CreateUserEvent value)? createUser,
    TResult Function(UpdateUserEvent value)? updateUser,
    TResult Function(DeleteUserEvent value)? deleteUser,
    TResult Function(SearchUsersEvent value)? searchUsers,
    TResult Function(ClearSearchEvent value)? clearSearch,
    TResult Function(RefreshUsersEvent value)? refreshUsers,
    required TResult orElse(),
  }) {
    if (deleteUser != null) {
      return deleteUser(this);
    }
    return orElse();
  }
}

abstract class DeleteUserEvent implements UserEvent {
  const factory DeleteUserEvent(final String id) = _$DeleteUserEventImpl;

  String get id;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteUserEventImplCopyWith<_$DeleteUserEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchUsersEventImplCopyWith<$Res> {
  factory _$$SearchUsersEventImplCopyWith(_$SearchUsersEventImpl value,
          $Res Function(_$SearchUsersEventImpl) then) =
      __$$SearchUsersEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchUsersEventImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$SearchUsersEventImpl>
    implements _$$SearchUsersEventImplCopyWith<$Res> {
  __$$SearchUsersEventImplCopyWithImpl(_$SearchUsersEventImpl _value,
      $Res Function(_$SearchUsersEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchUsersEventImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchUsersEventImpl implements SearchUsersEvent {
  const _$SearchUsersEventImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'UserEvent.searchUsers(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchUsersEventImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchUsersEventImplCopyWith<_$SearchUsersEventImpl> get copyWith =>
      __$$SearchUsersEventImplCopyWithImpl<_$SearchUsersEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadUsers,
    required TResult Function(User user) createUser,
    required TResult Function(User user) updateUser,
    required TResult Function(String id) deleteUser,
    required TResult Function(String query) searchUsers,
    required TResult Function() clearSearch,
    required TResult Function() refreshUsers,
  }) {
    return searchUsers(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadUsers,
    TResult? Function(User user)? createUser,
    TResult? Function(User user)? updateUser,
    TResult? Function(String id)? deleteUser,
    TResult? Function(String query)? searchUsers,
    TResult? Function()? clearSearch,
    TResult? Function()? refreshUsers,
  }) {
    return searchUsers?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadUsers,
    TResult Function(User user)? createUser,
    TResult Function(User user)? updateUser,
    TResult Function(String id)? deleteUser,
    TResult Function(String query)? searchUsers,
    TResult Function()? clearSearch,
    TResult Function()? refreshUsers,
    required TResult orElse(),
  }) {
    if (searchUsers != null) {
      return searchUsers(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUsers value) loadUsers,
    required TResult Function(CreateUserEvent value) createUser,
    required TResult Function(UpdateUserEvent value) updateUser,
    required TResult Function(DeleteUserEvent value) deleteUser,
    required TResult Function(SearchUsersEvent value) searchUsers,
    required TResult Function(ClearSearchEvent value) clearSearch,
    required TResult Function(RefreshUsersEvent value) refreshUsers,
  }) {
    return searchUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadUsers value)? loadUsers,
    TResult? Function(CreateUserEvent value)? createUser,
    TResult? Function(UpdateUserEvent value)? updateUser,
    TResult? Function(DeleteUserEvent value)? deleteUser,
    TResult? Function(SearchUsersEvent value)? searchUsers,
    TResult? Function(ClearSearchEvent value)? clearSearch,
    TResult? Function(RefreshUsersEvent value)? refreshUsers,
  }) {
    return searchUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUsers value)? loadUsers,
    TResult Function(CreateUserEvent value)? createUser,
    TResult Function(UpdateUserEvent value)? updateUser,
    TResult Function(DeleteUserEvent value)? deleteUser,
    TResult Function(SearchUsersEvent value)? searchUsers,
    TResult Function(ClearSearchEvent value)? clearSearch,
    TResult Function(RefreshUsersEvent value)? refreshUsers,
    required TResult orElse(),
  }) {
    if (searchUsers != null) {
      return searchUsers(this);
    }
    return orElse();
  }
}

abstract class SearchUsersEvent implements UserEvent {
  const factory SearchUsersEvent(final String query) = _$SearchUsersEventImpl;

  String get query;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchUsersEventImplCopyWith<_$SearchUsersEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearSearchEventImplCopyWith<$Res> {
  factory _$$ClearSearchEventImplCopyWith(_$ClearSearchEventImpl value,
          $Res Function(_$ClearSearchEventImpl) then) =
      __$$ClearSearchEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearSearchEventImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$ClearSearchEventImpl>
    implements _$$ClearSearchEventImplCopyWith<$Res> {
  __$$ClearSearchEventImplCopyWithImpl(_$ClearSearchEventImpl _value,
      $Res Function(_$ClearSearchEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearSearchEventImpl implements ClearSearchEvent {
  const _$ClearSearchEventImpl();

  @override
  String toString() {
    return 'UserEvent.clearSearch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearSearchEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadUsers,
    required TResult Function(User user) createUser,
    required TResult Function(User user) updateUser,
    required TResult Function(String id) deleteUser,
    required TResult Function(String query) searchUsers,
    required TResult Function() clearSearch,
    required TResult Function() refreshUsers,
  }) {
    return clearSearch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadUsers,
    TResult? Function(User user)? createUser,
    TResult? Function(User user)? updateUser,
    TResult? Function(String id)? deleteUser,
    TResult? Function(String query)? searchUsers,
    TResult? Function()? clearSearch,
    TResult? Function()? refreshUsers,
  }) {
    return clearSearch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadUsers,
    TResult Function(User user)? createUser,
    TResult Function(User user)? updateUser,
    TResult Function(String id)? deleteUser,
    TResult Function(String query)? searchUsers,
    TResult Function()? clearSearch,
    TResult Function()? refreshUsers,
    required TResult orElse(),
  }) {
    if (clearSearch != null) {
      return clearSearch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUsers value) loadUsers,
    required TResult Function(CreateUserEvent value) createUser,
    required TResult Function(UpdateUserEvent value) updateUser,
    required TResult Function(DeleteUserEvent value) deleteUser,
    required TResult Function(SearchUsersEvent value) searchUsers,
    required TResult Function(ClearSearchEvent value) clearSearch,
    required TResult Function(RefreshUsersEvent value) refreshUsers,
  }) {
    return clearSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadUsers value)? loadUsers,
    TResult? Function(CreateUserEvent value)? createUser,
    TResult? Function(UpdateUserEvent value)? updateUser,
    TResult? Function(DeleteUserEvent value)? deleteUser,
    TResult? Function(SearchUsersEvent value)? searchUsers,
    TResult? Function(ClearSearchEvent value)? clearSearch,
    TResult? Function(RefreshUsersEvent value)? refreshUsers,
  }) {
    return clearSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUsers value)? loadUsers,
    TResult Function(CreateUserEvent value)? createUser,
    TResult Function(UpdateUserEvent value)? updateUser,
    TResult Function(DeleteUserEvent value)? deleteUser,
    TResult Function(SearchUsersEvent value)? searchUsers,
    TResult Function(ClearSearchEvent value)? clearSearch,
    TResult Function(RefreshUsersEvent value)? refreshUsers,
    required TResult orElse(),
  }) {
    if (clearSearch != null) {
      return clearSearch(this);
    }
    return orElse();
  }
}

abstract class ClearSearchEvent implements UserEvent {
  const factory ClearSearchEvent() = _$ClearSearchEventImpl;
}

/// @nodoc
abstract class _$$RefreshUsersEventImplCopyWith<$Res> {
  factory _$$RefreshUsersEventImplCopyWith(_$RefreshUsersEventImpl value,
          $Res Function(_$RefreshUsersEventImpl) then) =
      __$$RefreshUsersEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshUsersEventImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$RefreshUsersEventImpl>
    implements _$$RefreshUsersEventImplCopyWith<$Res> {
  __$$RefreshUsersEventImplCopyWithImpl(_$RefreshUsersEventImpl _value,
      $Res Function(_$RefreshUsersEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RefreshUsersEventImpl implements RefreshUsersEvent {
  const _$RefreshUsersEventImpl();

  @override
  String toString() {
    return 'UserEvent.refreshUsers()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshUsersEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadUsers,
    required TResult Function(User user) createUser,
    required TResult Function(User user) updateUser,
    required TResult Function(String id) deleteUser,
    required TResult Function(String query) searchUsers,
    required TResult Function() clearSearch,
    required TResult Function() refreshUsers,
  }) {
    return refreshUsers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadUsers,
    TResult? Function(User user)? createUser,
    TResult? Function(User user)? updateUser,
    TResult? Function(String id)? deleteUser,
    TResult? Function(String query)? searchUsers,
    TResult? Function()? clearSearch,
    TResult? Function()? refreshUsers,
  }) {
    return refreshUsers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadUsers,
    TResult Function(User user)? createUser,
    TResult Function(User user)? updateUser,
    TResult Function(String id)? deleteUser,
    TResult Function(String query)? searchUsers,
    TResult Function()? clearSearch,
    TResult Function()? refreshUsers,
    required TResult orElse(),
  }) {
    if (refreshUsers != null) {
      return refreshUsers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUsers value) loadUsers,
    required TResult Function(CreateUserEvent value) createUser,
    required TResult Function(UpdateUserEvent value) updateUser,
    required TResult Function(DeleteUserEvent value) deleteUser,
    required TResult Function(SearchUsersEvent value) searchUsers,
    required TResult Function(ClearSearchEvent value) clearSearch,
    required TResult Function(RefreshUsersEvent value) refreshUsers,
  }) {
    return refreshUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadUsers value)? loadUsers,
    TResult? Function(CreateUserEvent value)? createUser,
    TResult? Function(UpdateUserEvent value)? updateUser,
    TResult? Function(DeleteUserEvent value)? deleteUser,
    TResult? Function(SearchUsersEvent value)? searchUsers,
    TResult? Function(ClearSearchEvent value)? clearSearch,
    TResult? Function(RefreshUsersEvent value)? refreshUsers,
  }) {
    return refreshUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUsers value)? loadUsers,
    TResult Function(CreateUserEvent value)? createUser,
    TResult Function(UpdateUserEvent value)? updateUser,
    TResult Function(DeleteUserEvent value)? deleteUser,
    TResult Function(SearchUsersEvent value)? searchUsers,
    TResult Function(ClearSearchEvent value)? clearSearch,
    TResult Function(RefreshUsersEvent value)? refreshUsers,
    required TResult orElse(),
  }) {
    if (refreshUsers != null) {
      return refreshUsers(this);
    }
    return orElse();
  }
}

abstract class RefreshUsersEvent implements UserEvent {
  const factory RefreshUsersEvent() = _$RefreshUsersEventImpl;
}
