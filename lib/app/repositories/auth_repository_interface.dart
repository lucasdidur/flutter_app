import 'package:firebase_auth/firebase_auth.dart';

abstract class IAuthRepository {
  User getUser();
  Future<User> getGoogleLogin();
  Future signInWithEmailAndPassword(String email, String password);
  Future registerWithEmailAndPassword(String email, String password);
  Future getLogout();
}
