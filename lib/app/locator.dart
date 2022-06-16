import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:story_clean/features/home/blocs/home_page_bloc/home_page_bloc.dart';
import 'package:story_core/story_core.dart';
import 'package:story_data/story_data.dart';
import 'package:story_domain/story_domain.dart';

final getIt = GetIt.instance;

void setLocator() {
  /// Data sources
  getIt.registerLazySingleton<CardsDataSource>(() => CardsDataSourceImpl(
        fireStore: getIt(),
      ));

  /// Repositories
  getIt.registerLazySingleton<CardsRepository>(
    () => CardsRepositoryImpl(
      cardsDataSource: getIt(),
      networkInfo: getIt(),
    ),
  );

  /// Use cases
  getIt.registerLazySingleton<GetCardListUseCase>(
    () => GetCardListUseCase(
      repository: getIt(),
    ),
  );

  /// Blocs
  getIt.registerFactory<HomePageBloc>(() => HomePageBloc(getCardListUseCase: getIt()));
  /// External
  getIt.registerLazySingleton<FirebaseFirestore>(
    () => FirebaseFirestore.instance,
  );
  getIt.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImpl(),
  );
}
