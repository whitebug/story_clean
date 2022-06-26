import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:story_clean/app/app.dart';
import 'package:story_clean/features/features.dart';
import 'package:story_clean/l10n/l10n.dart';
import 'package:story_data/story_data.dart';
import 'package:story_domain/story_domain.dart';

/// Main card game screen
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  CardEntity? currentCard;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    context.read<HomePageBloc>().add(const HomePageEvent.loadCards());
  }

  Future<void> addUser({required User user}) async {
    final UserModel userModel = UserModel(
      userName: user.displayName!,
      userEmail: user.email!,
      userAvatar: user.photoURL,
    );
    final result = await getIt<FirebaseFirestore>().collection('users').add(
          userModel.toJson(),
        );
    print(result);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        print('User is currently signed out!');
      } else {
        print('User is signed in!');
      }
    });
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ColoredBox(
                color: Theme.of(context).scaffoldBackgroundColor,
                child: Column(
                  children: [
                    Text(
                      AppConfiguration<ConfigurationDetails>.instance().configuration.title,
                    ),
                    ElevatedButton(
                      onPressed: () => context.read<AuthBloc>().add(
                            const AuthEvent.logout(),
                          ),
                      child: Text(
                        l10n.logout,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            BlocBuilder<HomePageBloc, HomePageState>(
              builder: (context, state) {
                return state.map(
                  loading: (state) => const SizedBox(),
                  error: (state) => const SizedBox(),
                  success: (state) {
                    return SizedBox(
                      height: 130.sp,
                      child: Center(
                        child: CardWidget(
                          cardEntity: state.selectedCard,
                        ),
                      ),
                    );
                  },
                );
              },
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
