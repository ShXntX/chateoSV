//esta es una clase abatracta
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepository {
  Future<void> singUp(String name, String email, String password);

  //login

  //login con google
  Future<void> signInWithGoogle();

  //saber si tengo un usuario logeado
  Stream<User?> get currentUser;
}
