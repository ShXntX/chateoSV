part of 'sing_up_cubit.dart';

//manejador de errores
enum Status {
  initail,
  loading,
  passwordTooWeek,
  emailAlreadyReistered,
  susses,
  failed,
  passwordMismatch,
}

final class SingUpState {
  final String? name;
  final String? email;
  final String? password;
  final String? confirmPassword;
  final Status? status;

  //Un constructor

  SingUpState({
    this.name,
    this.email,
    this.password,
    this.confirmPassword,
    this.status = Status.initail,
  });

  //metodo que crea copias de una claase

  SingUpState copyWith({
    String? name,
    String? email,
    String? password,
    String? confirmPassword,
    Status? status,
  }) {
    return SingUpState(
      name: name ?? this.name,
      email: email ?? this.email,
      password: password ?? this.password,
      status: status ?? this.status,
    );
  }
}
