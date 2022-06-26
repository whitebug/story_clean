import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:story_core/story_core.dart';
import 'package:story_domain/story_domain.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({
    required this.loginGoogleUseCase,
    required this.loginWithEmailUseCase,
    required this.logoutUserUseCase,
  }) : super(const AuthState.loading()) {
    on<_AuthGoogleEvent>(_authWithGoogle);
    on<_AuthEmailEvent>(_authWithEmail);
    on<_AuthLogoutEvent>(_logout);
  }

  /// Login with Google account use case
  final LoginGoogleUseCase loginGoogleUseCase;

  /// Login with email and password use case
  final LoginWithEmailUseCase loginWithEmailUseCase;

  /// Logout use case
  final LogoutUserUseCase logoutUserUseCase;

  FutureOr<void> _authWithGoogle(
    _AuthGoogleEvent event,
    Emitter<AuthState> emit,
  ) async {
    final loginGoogle = await loginGoogleUseCase(NoParams());
    loginGoogle.fold(
      (failure) => emit(AuthState.error(failure: failure)),
      (user) => emit(AuthState.authenticated(user: user)),
    );
  }

  FutureOr<void> _authWithEmail(
    _AuthEmailEvent event,
    Emitter<AuthState> emit,
  ) async {
    final LoginParams loginParams = LoginParams(
      email: event.email,
      password: event.password,
    );
    final loginEmail = await loginWithEmailUseCase(loginParams);
    loginEmail.fold(
      (failure) => emit(AuthState.error(failure: failure)),
      (user) => emit(AuthState.authenticated(user: user)),
    );
  }

  FutureOr<void> _logout(
    _AuthLogoutEvent event,
    Emitter<AuthState> emit,
  ) async {
    final loginEmail = await logoutUserUseCase(NoParams());
    loginEmail.fold(
      (failure) => emit(AuthState.error(failure: failure)),
      (result) => emit(AuthState.logout(result: result)),
    );
  }
}
