import 'package:dartz/dartz.dart';
import 'package:story_core/story_core.dart';
import 'package:story_domain/src/entities/entities.dart';

/// Getting access to story list
abstract class StoriesRepository {
  /// Get list of stories to evaluate
  Future<Either<Failure, List<StoryEntity>>> getStories();
}