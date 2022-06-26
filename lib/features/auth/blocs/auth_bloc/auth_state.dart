part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.loading() = AuthLoadingState;
  const factory AuthState.error({
    required Failure failure,
  }) = AuthErrorState;
  const factory AuthState.authenticated({
    required UserEntity user,
  }) = AuthenticatedState;
  const factory AuthState.logout({
    required bool result,
  }) = LogoutState;
}
