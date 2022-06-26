part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.loginWithGoogle() = _AuthGoogleEvent;
  const factory AuthEvent.loginWithEmail({
    required String email,
    required String password,
  }) = _AuthEmailEvent;
  const factory AuthEvent.logout() = _AuthLogoutEvent;
}
