import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:story_clean/app/app.dart';
import 'package:story_clean/features/features.dart';
import 'package:story_clean/l10n/l10n.dart';

class AppInit extends StatelessWidget {
  const AppInit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter(authGuard: AuthGuard());
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
        return MultiBlocProvider(
          providers: <BlocProvider<Object?>>[
            BlocProvider<HomePageBloc>(
              create: (_) => getIt<HomePageBloc>(),
            ),
            BlocProvider<AuthBloc>(
              create: (_) => getIt<AuthBloc>(),
            ),
          ],
          child: MaterialApp.router(
            theme: StoryTheme.light,
            darkTheme: StoryTheme.dark,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            routerDelegate: appRouter.delegate(
              initialDeepLink: '/',
              navigatorObservers: () => [AutoRouteObserver()],
            ),
            routeInformationProvider: appRouter.routeInfoProvider(),
            routeInformationParser: appRouter.defaultRouteParser(),
          ),
        );
      },
    );
  }
}