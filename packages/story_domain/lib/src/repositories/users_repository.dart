import 'package:dartz/dartz.dart';
import 'package:story_core/story_core.dart';
import 'package:story_domain/src/entities/entities.dart';

/// Manipulations with users
abstract class UsersRepository {
  /// Get user list as a stream
  Stream<Either<Failure, List<UserEntity>>> getUsers();

  /// OAuth with google account
  Future<Either<Failure, UserEntity>> loginWithGoogle();

  /// Login with email and password
  Future<Either<Failure, UserEntity>> loginWithEmail({
    required String email,
    required String password,
  });

  /// Logout Google
  Future<Either<Failure, bool>> logoutGoogle();

  /// Logout email
  Future<Either<Failure, bool>> logoutEmail();

  /// Register user in Firebase using email
  Future<Either<Failure, UserEntity>> registerUserWithEmail({
    required String userName,
    required String userEmail,
    required String userPassword,
  });
}
