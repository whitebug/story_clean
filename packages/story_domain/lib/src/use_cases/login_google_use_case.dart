import 'package:dartz/dartz.dart';
import 'package:story_core/story_core.dart';
import 'package:story_domain/story_domain.dart';

/// Get list of cards
class LoginGoogleUseCase implements UseCase<UserEntity, NoParams> {
  /// Access to api
  final UsersRepository repository;

  LoginGoogleUseCase({required this.repository});

  @override
  Future<Either<Failure, UserEntity>> call(NoParams params) {
    return repository.loginWithGoogle();
  }
}