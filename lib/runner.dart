import 'dart:async';
import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:story_clean/app/app.dart';

import 'firebase_options.dart';

/// App launch.
Future<void> runner() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setLocator();
  /// Specify screen orientation.
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  _runApp();
}

void _runApp() {
  runZonedGuarded<Future<void>>(
    () async {
      await BlocOverrides.runZoned(
        () async => runApp(
          const AppInit(),
        ),
        blocObserver: AppBlocObserver(),
      );
    },
    (exception, stack) {
      // TODO(init-project): Инициализировать Crashlytics.
      // FirebaseCrashlytics.instance.recordError(exception, stack);
      log(exception.toString(), stackTrace: stack);
    },
  );
}
