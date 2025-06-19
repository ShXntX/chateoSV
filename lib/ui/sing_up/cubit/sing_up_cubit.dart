import 'package:bloc/bloc.dart';

part 'sing_up_state.dart';

class SingUpCubit extends Cubit<SingUpState> {
  SingUpCubit() : super(SingUpState());

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
      state.copyWith(confirmPassword: confirmPassword, passwordMatch: isMatch),
    );
    //print(confirmPassword);
  }

  void createAccount() {
    print('createAccount');
    print(state.name);
    print(state.email);
    print(state.password);
    print(state.confirmPassword);
  }
}
