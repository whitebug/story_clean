import 'dart:async';
import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:story_core/story_core.dart';
import 'package:story_data/story_data.dart';
import 'package:story_domain/story_domain.dart';

class UsersRepositoryImpl implements UsersRepository {
  final UsersDataSource usersDataSource;
  final NetworkInfo networkInfo;
  final SharedPreferences sharedPreferences;

  UsersRepositoryImpl({
    required this.usersDataSource,
    required this.networkInfo,
    required this.sharedPreferences,
  });

  @override
  Stream<Either<Failure, List<UserModel>>> getUsers() {
    return usersDataSource.getUsers().transform(
          StreamTransformer.fromHandlers(
            handleData: (
              List<UserModel> data,
              EventSink<Either<Failure, List<UserModel>>> sink,
            ) async {
              if (await networkInfo.isConnected()) {
                sink.add(Right<Failure, List<UserModel>>(data));
              } else {
                sink.add(Left<Failure, List<UserModel>>(NetworkFailure()));
              }
            },
            handleError: (error, stackTrace, sink) {
              sink.add(Left<Failure, List<UserModel>>(ServerFailure()));
            },
          ),
        );
  }

  @override
  Future<Either<Failure, UserEntity>> loginWithGoogle() async {
    try {
      final UserModel result = await usersDataSource.loginWithGoogle();
      await sharedPreferences.setString(userKey, json.encode(result.toJson()));
      return Right(result);
    } on ServerException {
      return Left(ServerFailure());
    } on NetworkException {
      return Left(NetworkFailure());
    } on AuthException {
      return Left(AuthFailure());
    }
  }

  @override
  Future<Either<Failure, UserEntity>> loginWithEmail({
    required String email,
    required String password,
  }) async {
    try {
      final UserModel result = await usersDataSource.loginWithEmail(
        email: email,
        password: password,
      );
      await sharedPreferences.setString(userKey, json.encode(result.toJson()));
      return Right(result);
    } on ServerException {
      return Left(ServerFailure());
    } on NetworkException {
      return Left(NetworkFailure());
    } on AuthException {
      return Left(AuthFailure());
    }
  }

  @override
  Future<Either<Failure, UserModel>> registerUserWithEmail({
    required String userName,
    required String userEmail,
    required String userPassword,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, bool>> logoutGoogle() async {
    try {
      await usersDataSource.logoutEmail();
      return const Right(true);
    } catch(e) {
      return Left(AuthFailure());
    }
  }

  @override
  Future<Either<Failure, bool>> logoutEmail() async {
    try {
      await usersDataSource.logoutEmail();
      return const Right(true);
    } catch(e) {
      return Left(AuthFailure());
    }
  }
}
