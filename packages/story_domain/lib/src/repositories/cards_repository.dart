import 'package:dartz/dartz.dart';
import 'package:story_core/story_core.dart';
import 'package:story_domain/src/entities/entities.dart';

/// Repository for getting cards points
abstract class CardsRepository {
  /// Get cards list
  Stream<Either<Failure, List<CardEntity>>> getCards();
}
