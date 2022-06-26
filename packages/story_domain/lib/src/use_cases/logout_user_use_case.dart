import 'package:dartz/dartz.dart';
import 'package:story_core/story_core.dart';
import 'package:story_domain/src/repositories/repositories.dart';

/// Logout user
class LogoutUserUseCase implements UseCase<bool, NoParams> {
  /// Access to api
  final UsersRepository repository;

  LogoutUserUseCase({required this.repository});

  @override
  Future<Either<Failure, bool>> call(NoParams params) {
    return repository.logoutGoogle();
  }
}