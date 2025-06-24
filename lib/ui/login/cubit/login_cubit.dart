import 'package:bloc/bloc.dart';
import 'package:chateo_eela_2025/data/repositories/auth/auth_repository_impl.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginState());

  final _authRepository = AuthRepositoryImpl();

  void onEmailChanged(String email) {
    emit(state.copyWith(email: email));
  }

  void onPassChanged(String password) {
    emit(state.copyWith(password: password));
  }

  void logeado() async {
    try {
      emit(state.copyWith(status: Status.loading));
      //await Future.delayed(Duration(seconds: 3));
      await _authRepository.login(state.email!, state.password!);
      emit(state.copyWith(status: Status.susses));
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'user-not-found':
          emit(state.copyWith(status: Status.userNotFound));
          print('user-not-found');
          break;
        case 'wrong-password':
          print('wrong-password');
          emit(state.copyWith(status: Status.wrongPassword));
          break;
        case 'invalid-credential':
          print('email-already-in-use');
          emit(state.copyWith(status: Status.invalidCredential));
          break;
        default:
          print('default');
          emit(state.copyWith(status: Status.failed));
      }
    }
  }
}
