import 'package:dartz/dartz.dart';
import 'package:story_core/story_core.dart';
import 'package:story_domain/src/entities/entities.dart';

abstract class UsersRepository {
  Future<Either<Failure, List<UserEntity>>> getUsers();
}