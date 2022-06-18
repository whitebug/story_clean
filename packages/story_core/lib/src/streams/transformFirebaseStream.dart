import 'dart:async';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:story_core/story_core.dart';

StreamTransformer<T, Either<Failure, T>> transformFirebaseStream<T>() {
  return StreamTransformer<T, Either<Failure, T>>.fromHandlers(
    handleData: (T event, output) {
      try {
      } catch(e) {
        log(e.toString());
      }
    }
  );
}