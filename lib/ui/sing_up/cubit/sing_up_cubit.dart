import 'package:bloc/bloc.dart';
import 'package:chateo_eela_2025/data/repositories/auth/auth_repository_impl.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'sing_up_state.dart';

class SingUpCubit extends Cubit<SingUpState> {
  SingUpCubit() : super(SingUpState());

  final _authRepository = AuthRepositoryImpl();

  //creo los metodos para pasar los valores escritos al cubit

  void onNameChanged(String name) {
    emit(state.copyWith(name: name));
  }

  void onEmailChanged(String email) {
    emit(state.copyWith(email: email));
  }

  void onPassChanged(String password) {
    emit(state.copyWith(password: password));
  }

  void onConfPassChanged(String confirmPassword) {
    final isMatch = confirmPassword == state.password;
    emit(
      state.copyWith(
        confirmPassword: confirmPassword,
        status: isMatch ? Status.initail : Status.passwordMismatch,
      ),
    );
    //print(confirmPassword);
  }

  void createAccount() async {
    //obtiene las excepciones de la libreria de login de fire base
    try {
      emit(state.copyWith(status: Status.loading));
      //await Future.delayed(Duration(seconds: 3));
      await _authRepository.singUp(state.name!, state.email!, state.password!);
      emit(state.copyWith(status: Status.susses));
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'weak-password':
          emit(state.copyWith(status: Status.passwordTooWeek));
          print('weak-password');
          break;
        case 'email-already-in-use':
          print('email-already-in-use');
          emit(state.copyWith(status: Status.emailAlreadyReistered));
          break;
        default:
          print('default');
          emit(state.copyWith(status: Status.failed));
      }
    }
  }
}
