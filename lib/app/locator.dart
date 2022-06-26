import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:story_clean/features/features.dart';
import 'package:story_core/story_core.dart';
import 'package:story_data/story_data.dart';
import 'package:story_domain/story_domain.dart';

final getIt = GetIt.instance;

void setLocator() async {
  /// Data sources
  getIt.registerLazySingleton<CardsDataSource>(
    () => CardsDataSourceImpl(fireStore: getIt()),
  );
  getIt.registerLazySingleton<UsersDataSource>(
    () => UsersDataSourceImpl(
      fireStore: getIt(),
      networkInfo: getIt(),
      googleSignIn: getIt(),
      firebaseAuth: getIt(),
    ),
  );

  /// Repositories
  getIt.registerLazySingleton<CardsRepository>(
    () => CardsRepositoryImpl(
      cardsDataSource: getIt(),
      networkInfo: getIt(),
    ),
  );
  getIt.registerLazySingleton<UsersRepository>(
    () => UsersRepositoryImpl(
      usersDataSource: getIt(),
      networkInfo: getIt(),
      sharedPreferences: getIt(),
    ),
  );

  /// Use cases
  getIt.registerLazySingleton<GetCardListUseCase>(
    () => GetCardListUseCase(
      repository: getIt(),
    ),
  );
  getIt.registerLazySingleton<LoginWithEmailUseCase>(
    () => LoginWithEmailUseCase(
      repository: getIt(),
    ),
  );
  getIt.registerLazySingleton<LoginGoogleUseCase>(
    () => LoginGoogleUseCase(
      repository: getIt(),
    ),
  );
  getIt.registerLazySingleton<LogoutUserUseCase>(
    () => LogoutUserUseCase(
      repository: getIt(),
    ),
  );

  /// Blocs
  getIt.registerFactory<HomePageBloc>(
    () => HomePageBloc(
      getCardListUseCase: getIt(),
    ),
  );
  getIt.registerFactory<AuthBloc>(
    () => AuthBloc(
      loginGoogleUseCase: getIt(),
      loginWithEmailUseCase: getIt(),
      logoutUserUseCase: getIt(),
    ),
  );

  /// External
  getIt.registerLazySingleton<FirebaseFirestore>(
    () => FirebaseFirestore.instance,
  );
  getIt.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImpl(),
  );
  final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerSingleton<SharedPreferences>(
    sharedPreferences,
  );
  getIt.registerSingleton<GoogleSignIn>(GoogleSignIn());
  getIt.registerSingleton<FirebaseAuth>(FirebaseAuth.instance);
}
