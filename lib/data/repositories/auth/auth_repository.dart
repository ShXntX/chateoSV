//esta es una clase abatracta
abstract class AuthRepository {
  Future<void> singUp(String name, String email, String password);

  //login

  //login con google
  Future<void> signInWithGoogle();
}
