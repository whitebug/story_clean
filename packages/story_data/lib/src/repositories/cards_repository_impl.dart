import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:story_core/story_core.dart';
import 'package:story_data/src/data_sources/data_sources.dart';
import 'package:story_domain/story_domain.dart';

class CardsRepositoryImpl implements CardsRepository {
  final CardsDataSource cardsDataSource;
  final NetworkInfo networkInfo;

  CardsRepositoryImpl({
    required this.cardsDataSource,
    required this.networkInfo,
  });

  @override
  Stream<Either<Failure, List<CardEntity>>> getCards() {
    return cardsDataSource.getCards().transform(
      StreamTransformer.fromHandlers(
        handleData: (List<CardEntity> data, EventSink<Either<Failure, List<CardEntity>>> sink) {
          try {
            sink.add(Right(data));
          } on ServerException {
            sink.add(Left(ServerFailure()));
          }
        },
      ),
    );
  }
}