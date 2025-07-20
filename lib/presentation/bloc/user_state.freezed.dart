// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<User> users, bool isSearching, String searchQuery)
        loaded,
    required TResult Function(String message) error,
    required TResult Function(User user) userCreated,
    required TResult Function(User user) userUpdated,
    required TResult Function(String userId) userDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<User> users, bool isSearching, String searchQuery)?
        loaded,
    TResult? Function(String message)? error,
    TResult? Function(User user)? userCreated,
    TResult? Function(User user)? userUpdated,
    TResult? Function(String userId)? userDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> users, bool isSearching, String searchQuery)?
        loaded,
    TResult Function(String message)? error,
    TResult Function(User user)? userCreated,
    TResult Function(User user)? userUpdated,
    TResult Function(String userId)? userDeleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserInitial value) initial,
    required TResult Function(UserLoading value) loading,
    required TResult Function(UserLoaded value) loaded,
    required TResult Function(UserError value) error,
    required TResult Function(UserCreated value) userCreated,
    required TResult Function(UserUpdated value) userUpdated,
    required TResult Function(UserDeleted value) userDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserInitial value)? initial,
    TResult? Function(UserLoading value)? loading,
    TResult? Function(UserLoaded value)? loaded,
    TResult? Function(UserError value)? error,
    TResult? Function(UserCreated value)? userCreated,
    TResult? Function(UserUpdated value)? userUpdated,
    TResult? Function(UserDeleted value)? userDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInitial value)? initial,
    TResult Function(UserLoading value)? loading,
    TResult Function(UserLoaded value)? loaded,
    TResult Function(UserError value)? error,
    TResult Function(UserCreated value)? userCreated,
    TResult Function(UserUpdated value)? userUpdated,
    TResult Function(UserDeleted value)? userDeleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UserInitialImplCopyWith<$Res> {
  factory _$$UserInitialImplCopyWith(
          _$UserInitialImpl value, $Res Function(_$UserInitialImpl) then) =
      __$$UserInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserInitialImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserInitialImpl>
    implements _$$UserInitialImplCopyWith<$Res> {
  __$$UserInitialImplCopyWithImpl(
      _$UserInitialImpl _value, $Res Function(_$UserInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UserInitialImpl implements UserInitial {
  const _$UserInitialImpl();

  @override
  String toString() {
    return 'UserState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<User> users, bool isSearching, String searchQuery)
        loaded,
    required TResult Function(String message) error,
    required TResult Function(User user) userCreated,
    required TResult Function(User user) userUpdated,
    required TResult Function(String userId) userDeleted,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<User> users, bool isSearching, String searchQuery)?
        loaded,
    TResult? Function(String message)? error,
    TResult? Function(User user)? userCreated,
    TResult? Function(User user)? userUpdated,
    TResult? Function(String userId)? userDeleted,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> users, bool isSearching, String searchQuery)?
        loaded,
    TResult Function(String message)? error,
    TResult Function(User user)? userCreated,
    TResult Function(User user)? userUpdated,
    TResult Function(String userId)? userDeleted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserInitial value) initial,
    required TResult Function(UserLoading value) loading,
    required TResult Function(UserLoaded value) loaded,
    required TResult Function(UserError value) error,
    required TResult Function(UserCreated value) userCreated,
    required TResult Function(UserUpdated value) userUpdated,
    required TResult Function(UserDeleted value) userDeleted,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserInitial value)? initial,
    TResult? Function(UserLoading value)? loading,
    TResult? Function(UserLoaded value)? loaded,
    TResult? Function(UserError value)? error,
    TResult? Function(UserCreated value)? userCreated,
    TResult? Function(UserUpdated value)? userUpdated,
    TResult? Function(UserDeleted value)? userDeleted,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInitial value)? initial,
    TResult Function(UserLoading value)? loading,
    TResult Function(UserLoaded value)? loaded,
    TResult Function(UserError value)? error,
    TResult Function(UserCreated value)? userCreated,
    TResult Function(UserUpdated value)? userUpdated,
    TResult Function(UserDeleted value)? userDeleted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class UserInitial implements UserState {
  const factory UserInitial() = _$UserInitialImpl;
}

/// @nodoc
abstract class _$$UserLoadingImplCopyWith<$Res> {
  factory _$$UserLoadingImplCopyWith(
          _$UserLoadingImpl value, $Res Function(_$UserLoadingImpl) then) =
      __$$UserLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserLoadingImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserLoadingImpl>
    implements _$$UserLoadingImplCopyWith<$Res> {
  __$$UserLoadingImplCopyWithImpl(
      _$UserLoadingImpl _value, $Res Function(_$UserLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UserLoadingImpl implements UserLoading {
  const _$UserLoadingImpl();

  @override
  String toString() {
    return 'UserState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<User> users, bool isSearching, String searchQuery)
        loaded,
    required TResult Function(String message) error,
    required TResult Function(User user) userCreated,
    required TResult Function(User user) userUpdated,
    required TResult Function(String userId) userDeleted,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<User> users, bool isSearching, String searchQuery)?
        loaded,
    TResult? Function(String message)? error,
    TResult? Function(User user)? userCreated,
    TResult? Function(User user)? userUpdated,
    TResult? Function(String userId)? userDeleted,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> users, bool isSearching, String searchQuery)?
        loaded,
    TResult Function(String message)? error,
    TResult Function(User user)? userCreated,
    TResult Function(User user)? userUpdated,
    TResult Function(String userId)? userDeleted,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserInitial value) initial,
    required TResult Function(UserLoading value) loading,
    required TResult Function(UserLoaded value) loaded,
    required TResult Function(UserError value) error,
    required TResult Function(UserCreated value) userCreated,
    required TResult Function(UserUpdated value) userUpdated,
    required TResult Function(UserDeleted value) userDeleted,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserInitial value)? initial,
    TResult? Function(UserLoading value)? loading,
    TResult? Function(UserLoaded value)? loaded,
    TResult? Function(UserError value)? error,
    TResult? Function(UserCreated value)? userCreated,
    TResult? Function(UserUpdated value)? userUpdated,
    TResult? Function(UserDeleted value)? userDeleted,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInitial value)? initial,
    TResult Function(UserLoading value)? loading,
    TResult Function(UserLoaded value)? loaded,
    TResult Function(UserError value)? error,
    TResult Function(UserCreated value)? userCreated,
    TResult Function(UserUpdated value)? userUpdated,
    TResult Function(UserDeleted value)? userDeleted,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class UserLoading implements UserState {
  const factory UserLoading() = _$UserLoadingImpl;
}

/// @nodoc
abstract class _$$UserLoadedImplCopyWith<$Res> {
  factory _$$UserLoadedImplCopyWith(
          _$UserLoadedImpl value, $Res Function(_$UserLoadedImpl) then) =
      __$$UserLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<User> users, bool isSearching, String searchQuery});
}

/// @nodoc
class __$$UserLoadedImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserLoadedImpl>
    implements _$$UserLoadedImplCopyWith<$Res> {
  __$$UserLoadedImplCopyWithImpl(
      _$UserLoadedImpl _value, $Res Function(_$UserLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
    Object? isSearching = null,
    Object? searchQuery = null,
  }) {
    return _then(_$UserLoadedImpl(
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      isSearching: null == isSearching
          ? _value.isSearching
          : isSearching // ignore: cast_nullable_to_non_nullable
              as bool,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserLoadedImpl implements UserLoaded {
  const _$UserLoadedImpl(
      {required final List<User> users,
      this.isSearching = false,
      this.searchQuery = ''})
      : _users = users;

  final List<User> _users;
  @override
  List<User> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  @JsonKey()
  final bool isSearching;
  @override
  @JsonKey()
  final String searchQuery;

  @override
  String toString() {
    return 'UserState.loaded(users: $users, isSearching: $isSearching, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLoadedImpl &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.isSearching, isSearching) ||
                other.isSearching == isSearching) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_users), isSearching, searchQuery);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLoadedImplCopyWith<_$UserLoadedImpl> get copyWith =>
      __$$UserLoadedImplCopyWithImpl<_$UserLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<User> users, bool isSearching, String searchQuery)
        loaded,
    required TResult Function(String message) error,
    required TResult Function(User user) userCreated,
    required TResult Function(User user) userUpdated,
    required TResult Function(String userId) userDeleted,
  }) {
    return loaded(users, isSearching, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<User> users, bool isSearching, String searchQuery)?
        loaded,
    TResult? Function(String message)? error,
    TResult? Function(User user)? userCreated,
    TResult? Function(User user)? userUpdated,
    TResult? Function(String userId)? userDeleted,
  }) {
    return loaded?.call(users, isSearching, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> users, bool isSearching, String searchQuery)?
        loaded,
    TResult Function(String message)? error,
    TResult Function(User user)? userCreated,
    TResult Function(User user)? userUpdated,
    TResult Function(String userId)? userDeleted,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(users, isSearching, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserInitial value) initial,
    required TResult Function(UserLoading value) loading,
    required TResult Function(UserLoaded value) loaded,
    required TResult Function(UserError value) error,
    required TResult Function(UserCreated value) userCreated,
    required TResult Function(UserUpdated value) userUpdated,
    required TResult Function(UserDeleted value) userDeleted,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserInitial value)? initial,
    TResult? Function(UserLoading value)? loading,
    TResult? Function(UserLoaded value)? loaded,
    TResult? Function(UserError value)? error,
    TResult? Function(UserCreated value)? userCreated,
    TResult? Function(UserUpdated value)? userUpdated,
    TResult? Function(UserDeleted value)? userDeleted,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInitial value)? initial,
    TResult Function(UserLoading value)? loading,
    TResult Function(UserLoaded value)? loaded,
    TResult Function(UserError value)? error,
    TResult Function(UserCreated value)? userCreated,
    TResult Function(UserUpdated value)? userUpdated,
    TResult Function(UserDeleted value)? userDeleted,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class UserLoaded implements UserState {
  const factory UserLoaded(
      {required final List<User> users,
      final bool isSearching,
      final String searchQuery}) = _$UserLoadedImpl;

  List<User> get users;
  bool get isSearching;
  String get searchQuery;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserLoadedImplCopyWith<_$UserLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserErrorImplCopyWith<$Res> {
  factory _$$UserErrorImplCopyWith(
          _$UserErrorImpl value, $Res Function(_$UserErrorImpl) then) =
      __$$UserErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UserErrorImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserErrorImpl>
    implements _$$UserErrorImplCopyWith<$Res> {
  __$$UserErrorImplCopyWithImpl(
      _$UserErrorImpl _value, $Res Function(_$UserErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UserErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserErrorImpl implements UserError {
  const _$UserErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'UserState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserErrorImplCopyWith<_$UserErrorImpl> get copyWith =>
      __$$UserErrorImplCopyWithImpl<_$UserErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<User> users, bool isSearching, String searchQuery)
        loaded,
    required TResult Function(String message) error,
    required TResult Function(User user) userCreated,
    required TResult Function(User user) userUpdated,
    required TResult Function(String userId) userDeleted,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<User> users, bool isSearching, String searchQuery)?
        loaded,
    TResult? Function(String message)? error,
    TResult? Function(User user)? userCreated,
    TResult? Function(User user)? userUpdated,
    TResult? Function(String userId)? userDeleted,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> users, bool isSearching, String searchQuery)?
        loaded,
    TResult Function(String message)? error,
    TResult Function(User user)? userCreated,
    TResult Function(User user)? userUpdated,
    TResult Function(String userId)? userDeleted,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserInitial value) initial,
    required TResult Function(UserLoading value) loading,
    required TResult Function(UserLoaded value) loaded,
    required TResult Function(UserError value) error,
    required TResult Function(UserCreated value) userCreated,
    required TResult Function(UserUpdated value) userUpdated,
    required TResult Function(UserDeleted value) userDeleted,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserInitial value)? initial,
    TResult? Function(UserLoading value)? loading,
    TResult? Function(UserLoaded value)? loaded,
    TResult? Function(UserError value)? error,
    TResult? Function(UserCreated value)? userCreated,
    TResult? Function(UserUpdated value)? userUpdated,
    TResult? Function(UserDeleted value)? userDeleted,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInitial value)? initial,
    TResult Function(UserLoading value)? loading,
    TResult Function(UserLoaded value)? loaded,
    TResult Function(UserError value)? error,
    TResult Function(UserCreated value)? userCreated,
    TResult Function(UserUpdated value)? userUpdated,
    TResult Function(UserDeleted value)? userDeleted,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UserError implements UserState {
  const factory UserError({required final String message}) = _$UserErrorImpl;

  String get message;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserErrorImplCopyWith<_$UserErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserCreatedImplCopyWith<$Res> {
  factory _$$UserCreatedImplCopyWith(
          _$UserCreatedImpl value, $Res Function(_$UserCreatedImpl) then) =
      __$$UserCreatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$UserCreatedImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserCreatedImpl>
    implements _$$UserCreatedImplCopyWith<$Res> {
  __$$UserCreatedImplCopyWithImpl(
      _$UserCreatedImpl _value, $Res Function(_$UserCreatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$UserCreatedImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$UserCreatedImpl implements UserCreated {
  const _$UserCreatedImpl({required this.user});

  @override
  final User user;

  @override
  String toString() {
    return 'UserState.userCreated(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserCreatedImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserCreatedImplCopyWith<_$UserCreatedImpl> get copyWith =>
      __$$UserCreatedImplCopyWithImpl<_$UserCreatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<User> users, bool isSearching, String searchQuery)
        loaded,
    required TResult Function(String message) error,
    required TResult Function(User user) userCreated,
    required TResult Function(User user) userUpdated,
    required TResult Function(String userId) userDeleted,
  }) {
    return userCreated(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<User> users, bool isSearching, String searchQuery)?
        loaded,
    TResult? Function(String message)? error,
    TResult? Function(User user)? userCreated,
    TResult? Function(User user)? userUpdated,
    TResult? Function(String userId)? userDeleted,
  }) {
    return userCreated?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> users, bool isSearching, String searchQuery)?
        loaded,
    TResult Function(String message)? error,
    TResult Function(User user)? userCreated,
    TResult Function(User user)? userUpdated,
    TResult Function(String userId)? userDeleted,
    required TResult orElse(),
  }) {
    if (userCreated != null) {
      return userCreated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserInitial value) initial,
    required TResult Function(UserLoading value) loading,
    required TResult Function(UserLoaded value) loaded,
    required TResult Function(UserError value) error,
    required TResult Function(UserCreated value) userCreated,
    required TResult Function(UserUpdated value) userUpdated,
    required TResult Function(UserDeleted value) userDeleted,
  }) {
    return userCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserInitial value)? initial,
    TResult? Function(UserLoading value)? loading,
    TResult? Function(UserLoaded value)? loaded,
    TResult? Function(UserError value)? error,
    TResult? Function(UserCreated value)? userCreated,
    TResult? Function(UserUpdated value)? userUpdated,
    TResult? Function(UserDeleted value)? userDeleted,
  }) {
    return userCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInitial value)? initial,
    TResult Function(UserLoading value)? loading,
    TResult Function(UserLoaded value)? loaded,
    TResult Function(UserError value)? error,
    TResult Function(UserCreated value)? userCreated,
    TResult Function(UserUpdated value)? userUpdated,
    TResult Function(UserDeleted value)? userDeleted,
    required TResult orElse(),
  }) {
    if (userCreated != null) {
      return userCreated(this);
    }
    return orElse();
  }
}

abstract class UserCreated implements UserState {
  const factory UserCreated({required final User user}) = _$UserCreatedImpl;

  User get user;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserCreatedImplCopyWith<_$UserCreatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserUpdatedImplCopyWith<$Res> {
  factory _$$UserUpdatedImplCopyWith(
          _$UserUpdatedImpl value, $Res Function(_$UserUpdatedImpl) then) =
      __$$UserUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$UserUpdatedImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserUpdatedImpl>
    implements _$$UserUpdatedImplCopyWith<$Res> {
  __$$UserUpdatedImplCopyWithImpl(
      _$UserUpdatedImpl _value, $Res Function(_$UserUpdatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$UserUpdatedImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$UserUpdatedImpl implements UserUpdated {
  const _$UserUpdatedImpl({required this.user});

  @override
  final User user;

  @override
  String toString() {
    return 'UserState.userUpdated(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserUpdatedImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserUpdatedImplCopyWith<_$UserUpdatedImpl> get copyWith =>
      __$$UserUpdatedImplCopyWithImpl<_$UserUpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<User> users, bool isSearching, String searchQuery)
        loaded,
    required TResult Function(String message) error,
    required TResult Function(User user) userCreated,
    required TResult Function(User user) userUpdated,
    required TResult Function(String userId) userDeleted,
  }) {
    return userUpdated(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<User> users, bool isSearching, String searchQuery)?
        loaded,
    TResult? Function(String message)? error,
    TResult? Function(User user)? userCreated,
    TResult? Function(User user)? userUpdated,
    TResult? Function(String userId)? userDeleted,
  }) {
    return userUpdated?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> users, bool isSearching, String searchQuery)?
        loaded,
    TResult Function(String message)? error,
    TResult Function(User user)? userCreated,
    TResult Function(User user)? userUpdated,
    TResult Function(String userId)? userDeleted,
    required TResult orElse(),
  }) {
    if (userUpdated != null) {
      return userUpdated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserInitial value) initial,
    required TResult Function(UserLoading value) loading,
    required TResult Function(UserLoaded value) loaded,
    required TResult Function(UserError value) error,
    required TResult Function(UserCreated value) userCreated,
    required TResult Function(UserUpdated value) userUpdated,
    required TResult Function(UserDeleted value) userDeleted,
  }) {
    return userUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserInitial value)? initial,
    TResult? Function(UserLoading value)? loading,
    TResult? Function(UserLoaded value)? loaded,
    TResult? Function(UserError value)? error,
    TResult? Function(UserCreated value)? userCreated,
    TResult? Function(UserUpdated value)? userUpdated,
    TResult? Function(UserDeleted value)? userDeleted,
  }) {
    return userUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInitial value)? initial,
    TResult Function(UserLoading value)? loading,
    TResult Function(UserLoaded value)? loaded,
    TResult Function(UserError value)? error,
    TResult Function(UserCreated value)? userCreated,
    TResult Function(UserUpdated value)? userUpdated,
    TResult Function(UserDeleted value)? userDeleted,
    required TResult orElse(),
  }) {
    if (userUpdated != null) {
      return userUpdated(this);
    }
    return orElse();
  }
}

abstract class UserUpdated implements UserState {
  const factory UserUpdated({required final User user}) = _$UserUpdatedImpl;

  User get user;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserUpdatedImplCopyWith<_$UserUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserDeletedImplCopyWith<$Res> {
  factory _$$UserDeletedImplCopyWith(
          _$UserDeletedImpl value, $Res Function(_$UserDeletedImpl) then) =
      __$$UserDeletedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$UserDeletedImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserDeletedImpl>
    implements _$$UserDeletedImplCopyWith<$Res> {
  __$$UserDeletedImplCopyWithImpl(
      _$UserDeletedImpl _value, $Res Function(_$UserDeletedImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$UserDeletedImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserDeletedImpl implements UserDeleted {
  const _$UserDeletedImpl({required this.userId});

  @override
  final String userId;

  @override
  String toString() {
    return 'UserState.userDeleted(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDeletedImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDeletedImplCopyWith<_$UserDeletedImpl> get copyWith =>
      __$$UserDeletedImplCopyWithImpl<_$UserDeletedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<User> users, bool isSearching, String searchQuery)
        loaded,
    required TResult Function(String message) error,
    required TResult Function(User user) userCreated,
    required TResult Function(User user) userUpdated,
    required TResult Function(String userId) userDeleted,
  }) {
    return userDeleted(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<User> users, bool isSearching, String searchQuery)?
        loaded,
    TResult? Function(String message)? error,
    TResult? Function(User user)? userCreated,
    TResult? Function(User user)? userUpdated,
    TResult? Function(String userId)? userDeleted,
  }) {
    return userDeleted?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> users, bool isSearching, String searchQuery)?
        loaded,
    TResult Function(String message)? error,
    TResult Function(User user)? userCreated,
    TResult Function(User user)? userUpdated,
    TResult Function(String userId)? userDeleted,
    required TResult orElse(),
  }) {
    if (userDeleted != null) {
      return userDeleted(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserInitial value) initial,
    required TResult Function(UserLoading value) loading,
    required TResult Function(UserLoaded value) loaded,
    required TResult Function(UserError value) error,
    required TResult Function(UserCreated value) userCreated,
    required TResult Function(UserUpdated value) userUpdated,
    required TResult Function(UserDeleted value) userDeleted,
  }) {
    return userDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserInitial value)? initial,
    TResult? Function(UserLoading value)? loading,
    TResult? Function(UserLoaded value)? loaded,
    TResult? Function(UserError value)? error,
    TResult? Function(UserCreated value)? userCreated,
    TResult? Function(UserUpdated value)? userUpdated,
    TResult? Function(UserDeleted value)? userDeleted,
  }) {
    return userDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInitial value)? initial,
    TResult Function(UserLoading value)? loading,
    TResult Function(UserLoaded value)? loaded,
    TResult Function(UserError value)? error,
    TResult Function(UserCreated value)? userCreated,
    TResult Function(UserUpdated value)? userUpdated,
    TResult Function(UserDeleted value)? userDeleted,
    required TResult orElse(),
  }) {
    if (userDeleted != null) {
      return userDeleted(this);
    }
    return orElse();
  }
}

abstract class UserDeleted implements UserState {
  const factory UserDeleted({required final String userId}) = _$UserDeletedImpl;

  String get userId;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserDeletedImplCopyWith<_$UserDeletedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
