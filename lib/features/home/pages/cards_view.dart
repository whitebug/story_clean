import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:story_clean/features/features.dart';
import 'package:story_domain/story_domain.dart';

/// Cards scroller
class CardsView extends StatelessWidget {
  const CardsView({Key? key}) : super(key: key);

  // Adding padding at the beginning and at the end
  EdgeInsets _padding({
    required int index,
    required int length,
  }) {
    if (index == 0) {
      return EdgeInsets.fromLTRB(10.sp, 4.sp, 4.sp, 4.sp);
    } else if (index == length - 1) {
      return EdgeInsets.fromLTRB(4.sp, 4.sp, 10.sp, 4.sp);
    } else {
      return EdgeInsets.all(4.sp);
    }
  }

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
                  padding: _padding(
                    index: index,
                    length: state.cards.length,
                  ),
                  child: CardWidget(
                    cardEntity: cards[index],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
