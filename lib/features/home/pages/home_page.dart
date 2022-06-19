import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:story_clean/app/app.dart';
import 'package:story_clean/features/features.dart';
import 'package:story_clean/features/home/home.dart';
import 'package:story_domain/story_domain.dart';
import 'package:google_sign_in/google_sign_in.dart';

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

  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  Future<UserCredential> signInWithEmail({
    required String email,
    required String password,
  }) async {
    return await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  @override
  Widget build(BuildContext context) {
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
                child: Text(
                  AppConfiguration<ConfigurationDetails>.instance().configuration.title,
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
                          onPressed: signInWithGoogle,
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
