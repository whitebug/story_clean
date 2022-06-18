import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:story_core/story_core.dart';
import 'package:story_domain/story_domain.dart';

part 'home_page_event.dart';
part 'home_page_state.dart';
part 'home_page_bloc.freezed.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  final GetCardListUseCase getCardListUseCase;
  HomePageBloc({
    required this.getCardListUseCase,
  }) : super(const HomePageState.loading()) {
    on<_HomePageLoadCardsEvent>(_getCards);
  }

  FutureOr<void> _getCards(_HomePageLoadCardsEvent event, Emitter<HomePageState> emit) async {
    final Stream<Either<Failure, List<CardEntity>>> streamEither = getCardListUseCase(NoParams());
    await emit.forEach(
      streamEither,
      onData: (Either<Failure, List<CardEntity>> data) {
        return data.fold(
          (failure) {
            if (failure is NetworkFailure) {
              return const HomePageState.error(error: 'network');
            } else {
              return const HomePageState.error(error: 'server');
            }
          },
          (List<CardEntity> cards) {
            cards.sort((a, b) => a.points.compareTo(b.points));
            return HomePageState.success(
              cards: cards,
            );
          },
        );
      },
    );
  }
}
