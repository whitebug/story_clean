import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:story_domain/story_domain.dart';

part 'home_page_event.dart';
part 'home_page_state.dart';
part 'home_page_bloc.freezed.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  HomePageBloc() : super(const HomePageState.loading()) {
    on<_HomePageLoadCardsEvent>(_getCards);
  }

  FutureOr<void> _getCards(_HomePageLoadCardsEvent event, Emitter<HomePageState> emit) async {

  }
}
