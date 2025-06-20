part of 'login_cubit.dart';

//manejador de errores
enum Status {
  initail,
  loading,
  susses,
  failed,
  userNotFound,
  wrongPassword,
  invalidCredential,
}

final class LoginState {
  final String? email;
  final String? password;
  final Status? status;

  LoginState({this.email, this.password, this.status = Status.initail});

  LoginState copyWith({String? email, String? password, Status? status}) {
    return LoginState(
      email: email ?? this.email,
      password: password ?? this.password,
      status: status ?? this.status,
    );
  }
}
