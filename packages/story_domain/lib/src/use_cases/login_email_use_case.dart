import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:story_core/story_core.dart';
import 'package:story_domain/src/entities/entities.dart';
import 'package:story_domain/src/repositories/repositories.dart';

/// Login user
class LoginWithEmailUseCase implements UseCase<UserEntity, LoginParams> {
  /// Access to api
  final UsersRepository repository;

  LoginWithEmailUseCase({required this.repository});

  @override
  Future<Either<Failure, UserEntity>> call(LoginParams params) {
    return repository.loginWithEmail(
      email: params.email,
      password: params.password,
    );
  }
}

/// User login parameters
class LoginParams extends Equatable {
  /// User email
  final String email;

  /// User password
  final String password;

  const LoginParams({
    required this.email,
    required this.password,
  });

  @override
  List<Object> get props => [email, password];
}
