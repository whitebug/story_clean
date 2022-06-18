import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:story_clean/features/home/home.dart';
import 'package:story_clean/features/home/widgets/widgets.dart';
import 'package:story_domain/story_domain.dart';

/// Cards scroller
class CardsView extends StatelessWidget {
  const CardsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomePageBloc, HomePageState>(
      builder: (context, state) {
        return state.map(
          loading: (state) => const CircularProgressIndicator(),
          error: (state) => Text(state.error),
          success: (state) => ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: state.cards.length,
            itemBuilder: (BuildContext context, int index) {
              final List<CardEntity> cards = state.cards;
              return Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CardWidget(cardEntity: cards[index]),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
