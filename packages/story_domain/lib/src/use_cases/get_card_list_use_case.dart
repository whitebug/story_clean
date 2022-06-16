import 'package:dartz/dartz.dart';
import 'package:story_core/story_core.dart';
import 'package:story_domain/src/entities/entities.dart';
import 'package:story_domain/src/repositories/repositories.dart';

/// Get list of cards
class GetCardListUseCase implements StreamUseCase<List<CardEntity>, NoParams> {
  /// Access to api
  final CardsRepository repository;

  GetCardListUseCase({required this.repository});

  @override
  Stream<Either<Failure, List<CardEntity>>> call(NoParams params) {
    return repository.getCards();
  }
}
