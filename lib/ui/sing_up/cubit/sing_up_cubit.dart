import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'sing_up_state.dart';

class SingUpCubit extends Cubit<SingUpState> {
  SingUpCubit() : super(SingUpInitial());

  //creo los metodos para pasar los valores escritos al cubit

  void onNameChanged(String name) {
    print(name);
  }

  void onEmailChanged(String email) {
    print(email);
  }

  void onPassChanged(String pass) {
    print(pass);
  }

  void onConfPassChanged(String cpass) {
    print(cpass);
  }
}
