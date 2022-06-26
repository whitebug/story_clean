import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:story_core/story_core.dart';
import 'package:story_data/story_data.dart';
import 'package:story_domain/story_domain.dart';

class CardsRepositoryImpl implements CardsRepository {
  final CardsDataSource cardsDataSource;
  final NetworkInfo networkInfo;

  CardsRepositoryImpl({
    required this.cardsDataSource,
    required this.networkInfo,
  });

  @override
  Stream<Either<Failure, List<CardModel>>> getCards() {
    return cardsDataSource.getCards().transform(
          StreamTransformer.fromHandlers(
            handleData: (
              List<CardModel> data,
              EventSink<Either<Failure, List<CardModel>>> sink,
            ) async {
              if (await networkInfo.isConnected()) {
                sink.add(Right<Failure, List<CardModel>>(data));
              } else {
                sink.add(Left<Failure, List<CardModel>>(NetworkFailure()));
              }
            },
            handleError: (error, stackTrace, sink) {
              sink.add(Left<Failure, List<CardModel>>(ServerFailure()));
            },
          ),
        );
  }
}
