import 'package:dartz/dartz.dart';
import 'package:story_core/src/errors/errors.dart';

abstract class StreamUseCase<Type, Params> {
  Stream<Either<Failure, Type>> call(Params params);
}