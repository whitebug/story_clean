import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:story_clean/features/home/blocs/home_page_bloc/home_page_bloc.dart';
import 'package:story_domain/story_domain.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<HomePageBloc, HomePageState>(
          builder: (context, state) {
            return state.map(
              loading: (state) => const CircularProgressIndicator(),
              error: (state) => Text(state.error),
              success: (state) => ListView.builder(
                itemCount: state.cards.length,
                itemBuilder: (BuildContext context, int index) {
                  final List<CardEntity> cards = state.cards;
                  return Text('${cards[index].points}');
                },
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    context.read<HomePageBloc>().add(const HomePageEvent.loadCards());
  }
}
