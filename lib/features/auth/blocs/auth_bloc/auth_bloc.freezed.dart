// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loginWithGoogle,
    required TResult Function(String email, String password) loginWithEmail,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loginWithGoogle,
    TResult Function(String email, String password)? loginWithEmail,
    TResult Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loginWithGoogle,
    TResult Function(String email, String password)? loginWithEmail,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthGoogleEvent value) loginWithGoogle,
    required TResult Function(_AuthEmailEvent value) loginWithEmail,
    required TResult Function(_AuthLogoutEvent value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthGoogleEvent value)? loginWithGoogle,
    TResult Function(_AuthEmailEvent value)? loginWithEmail,
    TResult Function(_AuthLogoutEvent value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthGoogleEvent value)? loginWithGoogle,
    TResult Function(_AuthEmailEvent value)? loginWithEmail,
    TResult Function(_AuthLogoutEvent value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class _$$_AuthGoogleEventCopyWith<$Res> {
  factory _$$_AuthGoogleEventCopyWith(
          _$_AuthGoogleEvent value, $Res Function(_$_AuthGoogleEvent) then) =
      __$$_AuthGoogleEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthGoogleEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$$_AuthGoogleEventCopyWith<$Res> {
  __$$_AuthGoogleEventCopyWithImpl(
      _$_AuthGoogleEvent _value, $Res Function(_$_AuthGoogleEvent) _then)
      : super(_value, (v) => _then(v as _$_AuthGoogleEvent));

  @override
  _$_AuthGoogleEvent get _value => super._value as _$_AuthGoogleEvent;
}

/// @nodoc

class _$_AuthGoogleEvent implements _AuthGoogleEvent {
  const _$_AuthGoogleEvent();

  @override
  String toString() {
    return 'AuthEvent.loginWithGoogle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthGoogleEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loginWithGoogle,
    required TResult Function(String email, String password) loginWithEmail,
    required TResult Function() logout,
  }) {
    return loginWithGoogle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loginWithGoogle,
    TResult Function(String email, String password)? loginWithEmail,
    TResult Function()? logout,
  }) {
    return loginWithGoogle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loginWithGoogle,
    TResult Function(String email, String password)? loginWithEmail,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (loginWithGoogle != null) {
      return loginWithGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthGoogleEvent value) loginWithGoogle,
    required TResult Function(_AuthEmailEvent value) loginWithEmail,
    required TResult Function(_AuthLogoutEvent value) logout,
  }) {
    return loginWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthGoogleEvent value)? loginWithGoogle,
    TResult Function(_AuthEmailEvent value)? loginWithEmail,
    TResult Function(_AuthLogoutEvent value)? logout,
  }) {
    return loginWithGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthGoogleEvent value)? loginWithGoogle,
    TResult Function(_AuthEmailEvent value)? loginWithEmail,
    TResult Function(_AuthLogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (loginWithGoogle != null) {
      return loginWithGoogle(this);
    }
    return orElse();
  }
}

abstract class _AuthGoogleEvent implements AuthEvent {
  const factory _AuthGoogleEvent() = _$_AuthGoogleEvent;
}

/// @nodoc
abstract class _$$_AuthEmailEventCopyWith<$Res> {
  factory _$$_AuthEmailEventCopyWith(
          _$_AuthEmailEvent value, $Res Function(_$_AuthEmailEvent) then) =
      __$$_AuthEmailEventCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class __$$_AuthEmailEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$$_AuthEmailEventCopyWith<$Res> {
  __$$_AuthEmailEventCopyWithImpl(
      _$_AuthEmailEvent _value, $Res Function(_$_AuthEmailEvent) _then)
      : super(_value, (v) => _then(v as _$_AuthEmailEvent));

  @override
  _$_AuthEmailEvent get _value => super._value as _$_AuthEmailEvent;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_AuthEmailEvent(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AuthEmailEvent implements _AuthEmailEvent {
  const _$_AuthEmailEvent({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.loginWithEmail(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthEmailEvent &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$_AuthEmailEventCopyWith<_$_AuthEmailEvent> get copyWith =>
      __$$_AuthEmailEventCopyWithImpl<_$_AuthEmailEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loginWithGoogle,
    required TResult Function(String email, String password) loginWithEmail,
    required TResult Function() logout,
  }) {
    return loginWithEmail(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loginWithGoogle,
    TResult Function(String email, String password)? loginWithEmail,
    TResult Function()? logout,
  }) {
    return loginWithEmail?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loginWithGoogle,
    TResult Function(String email, String password)? loginWithEmail,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (loginWithEmail != null) {
      return loginWithEmail(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthGoogleEvent value) loginWithGoogle,
    required TResult Function(_AuthEmailEvent value) loginWithEmail,
    required TResult Function(_AuthLogoutEvent value) logout,
  }) {
    return loginWithEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthGoogleEvent value)? loginWithGoogle,
    TResult Function(_AuthEmailEvent value)? loginWithEmail,
    TResult Function(_AuthLogoutEvent value)? logout,
  }) {
    return loginWithEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthGoogleEvent value)? loginWithGoogle,
    TResult Function(_AuthEmailEvent value)? loginWithEmail,
    TResult Function(_AuthLogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (loginWithEmail != null) {
      return loginWithEmail(this);
    }
    return orElse();
  }
}

abstract class _AuthEmailEvent implements AuthEvent {
  const factory _AuthEmailEvent(
      {required final String email,
      required final String password}) = _$_AuthEmailEvent;

  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_AuthEmailEventCopyWith<_$_AuthEmailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthLogoutEventCopyWith<$Res> {
  factory _$$_AuthLogoutEventCopyWith(
          _$_AuthLogoutEvent value, $Res Function(_$_AuthLogoutEvent) then) =
      __$$_AuthLogoutEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthLogoutEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$$_AuthLogoutEventCopyWith<$Res> {
  __$$_AuthLogoutEventCopyWithImpl(
      _$_AuthLogoutEvent _value, $Res Function(_$_AuthLogoutEvent) _then)
      : super(_value, (v) => _then(v as _$_AuthLogoutEvent));

  @override
  _$_AuthLogoutEvent get _value => super._value as _$_AuthLogoutEvent;
}

/// @nodoc

class _$_AuthLogoutEvent implements _AuthLogoutEvent {
  const _$_AuthLogoutEvent();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthLogoutEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loginWithGoogle,
    required TResult Function(String email, String password) loginWithEmail,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loginWithGoogle,
    TResult Function(String email, String password)? loginWithEmail,
    TResult Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loginWithGoogle,
    TResult Function(String email, String password)? loginWithEmail,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthGoogleEvent value) loginWithGoogle,
    required TResult Function(_AuthEmailEvent value) loginWithEmail,
    required TResult Function(_AuthLogoutEvent value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthGoogleEvent value)? loginWithGoogle,
    TResult Function(_AuthEmailEvent value)? loginWithEmail,
    TResult Function(_AuthLogoutEvent value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthGoogleEvent value)? loginWithGoogle,
    TResult Function(_AuthEmailEvent value)? loginWithEmail,
    TResult Function(_AuthLogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _AuthLogoutEvent implements AuthEvent {
  const factory _AuthLogoutEvent() = _$_AuthLogoutEvent;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Failure failure) error,
    required TResult Function(UserEntity user) authenticated,
    required TResult Function(bool result) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(UserEntity user)? authenticated,
    TResult Function(bool result)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(UserEntity user)? authenticated,
    TResult Function(bool result)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLoadingState value) loading,
    required TResult Function(AuthErrorState value) error,
    required TResult Function(AuthenticatedState value) authenticated,
    required TResult Function(LogoutState value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthErrorState value)? error,
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(LogoutState value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthErrorState value)? error,
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(LogoutState value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class _$$AuthLoadingStateCopyWith<$Res> {
  factory _$$AuthLoadingStateCopyWith(
          _$AuthLoadingState value, $Res Function(_$AuthLoadingState) then) =
      __$$AuthLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthLoadingStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$AuthLoadingStateCopyWith<$Res> {
  __$$AuthLoadingStateCopyWithImpl(
      _$AuthLoadingState _value, $Res Function(_$AuthLoadingState) _then)
      : super(_value, (v) => _then(v as _$AuthLoadingState));

  @override
  _$AuthLoadingState get _value => super._value as _$AuthLoadingState;
}

/// @nodoc

class _$AuthLoadingState implements AuthLoadingState {
  const _$AuthLoadingState();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Failure failure) error,
    required TResult Function(UserEntity user) authenticated,
    required TResult Function(bool result) logout,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(UserEntity user)? authenticated,
    TResult Function(bool result)? logout,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(UserEntity user)? authenticated,
    TResult Function(bool result)? logout,
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
    required TResult Function(AuthLoadingState value) loading,
    required TResult Function(AuthErrorState value) error,
    required TResult Function(AuthenticatedState value) authenticated,
    required TResult Function(LogoutState value) logout,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthErrorState value)? error,
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(LogoutState value)? logout,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthErrorState value)? error,
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(LogoutState value)? logout,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AuthLoadingState implements AuthState {
  const factory AuthLoadingState() = _$AuthLoadingState;
}

/// @nodoc
abstract class _$$AuthErrorStateCopyWith<$Res> {
  factory _$$AuthErrorStateCopyWith(
          _$AuthErrorState value, $Res Function(_$AuthErrorState) then) =
      __$$AuthErrorStateCopyWithImpl<$Res>;
  $Res call({Failure failure});
}

/// @nodoc
class __$$AuthErrorStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$AuthErrorStateCopyWith<$Res> {
  __$$AuthErrorStateCopyWithImpl(
      _$AuthErrorState _value, $Res Function(_$AuthErrorState) _then)
      : super(_value, (v) => _then(v as _$AuthErrorState));

  @override
  _$AuthErrorState get _value => super._value as _$AuthErrorState;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$AuthErrorState(
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$AuthErrorState implements AuthErrorState {
  const _$AuthErrorState({required this.failure});

  @override
  final Failure failure;

  @override
  String toString() {
    return 'AuthState.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthErrorState &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$AuthErrorStateCopyWith<_$AuthErrorState> get copyWith =>
      __$$AuthErrorStateCopyWithImpl<_$AuthErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Failure failure) error,
    required TResult Function(UserEntity user) authenticated,
    required TResult Function(bool result) logout,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(UserEntity user)? authenticated,
    TResult Function(bool result)? logout,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(UserEntity user)? authenticated,
    TResult Function(bool result)? logout,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLoadingState value) loading,
    required TResult Function(AuthErrorState value) error,
    required TResult Function(AuthenticatedState value) authenticated,
    required TResult Function(LogoutState value) logout,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthErrorState value)? error,
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(LogoutState value)? logout,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthErrorState value)? error,
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(LogoutState value)? logout,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AuthErrorState implements AuthState {
  const factory AuthErrorState({required final Failure failure}) =
      _$AuthErrorState;

  Failure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$AuthErrorStateCopyWith<_$AuthErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticatedStateCopyWith<$Res> {
  factory _$$AuthenticatedStateCopyWith(_$AuthenticatedState value,
          $Res Function(_$AuthenticatedState) then) =
      __$$AuthenticatedStateCopyWithImpl<$Res>;
  $Res call({UserEntity user});
}

/// @nodoc
class __$$AuthenticatedStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$AuthenticatedStateCopyWith<$Res> {
  __$$AuthenticatedStateCopyWithImpl(
      _$AuthenticatedState _value, $Res Function(_$AuthenticatedState) _then)
      : super(_value, (v) => _then(v as _$AuthenticatedState));

  @override
  _$AuthenticatedState get _value => super._value as _$AuthenticatedState;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$AuthenticatedState(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ));
  }
}

/// @nodoc

class _$AuthenticatedState implements AuthenticatedState {
  const _$AuthenticatedState({required this.user});

  @override
  final UserEntity user;

  @override
  String toString() {
    return 'AuthState.authenticated(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticatedState &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$AuthenticatedStateCopyWith<_$AuthenticatedState> get copyWith =>
      __$$AuthenticatedStateCopyWithImpl<_$AuthenticatedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Failure failure) error,
    required TResult Function(UserEntity user) authenticated,
    required TResult Function(bool result) logout,
  }) {
    return authenticated(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(UserEntity user)? authenticated,
    TResult Function(bool result)? logout,
  }) {
    return authenticated?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(UserEntity user)? authenticated,
    TResult Function(bool result)? logout,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLoadingState value) loading,
    required TResult Function(AuthErrorState value) error,
    required TResult Function(AuthenticatedState value) authenticated,
    required TResult Function(LogoutState value) logout,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthErrorState value)? error,
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(LogoutState value)? logout,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthErrorState value)? error,
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(LogoutState value)? logout,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class AuthenticatedState implements AuthState {
  const factory AuthenticatedState({required final UserEntity user}) =
      _$AuthenticatedState;

  UserEntity get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$AuthenticatedStateCopyWith<_$AuthenticatedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutStateCopyWith<$Res> {
  factory _$$LogoutStateCopyWith(
          _$LogoutState value, $Res Function(_$LogoutState) then) =
      __$$LogoutStateCopyWithImpl<$Res>;
  $Res call({bool result});
}

/// @nodoc
class __$$LogoutStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$LogoutStateCopyWith<$Res> {
  __$$LogoutStateCopyWithImpl(
      _$LogoutState _value, $Res Function(_$LogoutState) _then)
      : super(_value, (v) => _then(v as _$LogoutState));

  @override
  _$LogoutState get _value => super._value as _$LogoutState;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_$LogoutState(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LogoutState implements LogoutState {
  const _$LogoutState({required this.result});

  @override
  final bool result;

  @override
  String toString() {
    return 'AuthState.logout(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogoutState &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  _$$LogoutStateCopyWith<_$LogoutState> get copyWith =>
      __$$LogoutStateCopyWithImpl<_$LogoutState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Failure failure) error,
    required TResult Function(UserEntity user) authenticated,
    required TResult Function(bool result) logout,
  }) {
    return logout(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(UserEntity user)? authenticated,
    TResult Function(bool result)? logout,
  }) {
    return logout?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(UserEntity user)? authenticated,
    TResult Function(bool result)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLoadingState value) loading,
    required TResult Function(AuthErrorState value) error,
    required TResult Function(AuthenticatedState value) authenticated,
    required TResult Function(LogoutState value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthErrorState value)? error,
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(LogoutState value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthErrorState value)? error,
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(LogoutState value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class LogoutState implements AuthState {
  const factory LogoutState({required final bool result}) = _$LogoutState;

  bool get result => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$LogoutStateCopyWith<_$LogoutState> get copyWith =>
      throw _privateConstructorUsedError;
}
