import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:story_clean/app/app.dart';
import 'package:story_clean/features/features.dart';
import 'package:story_clean/features/home/home.dart';

/// Main card game screen
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    context.read<HomePageBloc>().add(const HomePageEvent.loadCards());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ColoredBox(
                color: Theme.of(context).scaffoldBackgroundColor,
                child: Text(
                  AppConfiguration<ConfigurationDetails>.instance().configuration.title,
                ),
              ),
            ),
            SizedBox(
              height: 130.sp,
              child: const CardsView(),
            ),
          ],
        ),
      ),
    );
  }
}
