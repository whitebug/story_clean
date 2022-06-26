import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:story_core/story_core.dart';
import 'package:story_data/src/models/models.dart';
import 'package:story_data/story_data.dart';
import 'package:story_domain/story_domain.dart';

const String usersCollection = 'active_users';

/// Getting cards info from firebase
abstract class UsersDataSource {
  /// Get list of users as a stream
  Stream<List<UserModel>> getUsers();

  /// Authenticate with google account
  Future<UserModel> loginWithGoogle();

  /// Authenticate with email
  Future<UserModel> loginWithEmail({
    required String email,
    required String password,
  });

  Future<void> logoutGoogle();

  Future<void> logoutEmail();
}

class UsersDataSourceImpl implements UsersDataSource {
  /// Database access
  final FirebaseFirestore fireStore;

  /// Network checker
  final NetworkInfo networkInfo;

  /// Google auth
  final GoogleSignIn googleSignIn;

  /// Authentication
  final FirebaseAuth firebaseAuth;

  UsersDataSourceImpl({
    required this.fireStore,
    required this.networkInfo,
    required this.googleSignIn,
    required this.firebaseAuth,
  });

  @override
  Stream<List<UserModel>> getUsers() {
    try {
      return fireStore
          .collection(usersCollection)
          .snapshots()
          .map((snapShot) => snapShot.docs.map((doc) => UserModel.fromJson(doc.data())).toList());
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<UserModel> loginWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
      final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      final UserCredential userCredential = await firebaseAuth.signInWithCredential(credential);
      return await addUserToActiveUsers(userCredential: userCredential);
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<UserModel> loginWithEmail({
    required String email,
    required String password,
  }) async {
    final UserCredential userCredential = await firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    return await addUserToActiveUsers(userCredential: userCredential);
  }

  @override
  Future<void> logoutGoogle() async {
    await googleSignIn.signOut();
  }

  @override
  Future<void> logoutEmail() async {
    await firebaseAuth.signOut();
  }

  /// Add a user to the list of active users. If authentication is successful
  /// returns true, otherwise false
  Future<UserModel> addUserToActiveUsers({
    required UserCredential userCredential,
  }) async {
    if (await networkInfo.isConnected()) {
      try {
        if (userCredential.user != null) {
          UserEntity user = UserEntity(
            userName: userCredential.user!.displayName,
            userEmail: userCredential.user!.email,
          );
          UserModel userModel = UserModel.fromEntity(user);
          await fireStore.collection(usersCollection).add(
            userModel.toJson(),
          );
          return userModel;
        } else {
          throw AuthException();
        }
      } catch (e) {
        throw ServerException();
      }
    } else {
      throw NetworkException();
    }
  }
}
