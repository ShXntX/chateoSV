import 'package:bloc/bloc.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginState());

  void onEmailChanged(String email) {
    emit(state.copyWith(email: email));
  }

  void onPassChanged(String password) {
    emit(state.copyWith(password: password));
  }

  void logeado() {
    print('LogOn');
    print(state.email);
    print(state.password);
  }
}
