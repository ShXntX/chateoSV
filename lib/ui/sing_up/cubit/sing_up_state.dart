part of 'sing_up_cubit.dart';

final class SingUpState {
  final String? name;
  final String? email;
  final String? password;
  final String? confirmPassword;
  final bool passwordMatch;

  //Un constructor

  SingUpState({
    this.name,
    this.email,
    this.password,
    this.confirmPassword,
    this.passwordMatch = true,
  });

  //metodo que crea copias de una claase

  SingUpState copyWith({
    String? name,
    String? email,
    String? password,
    String? confirmPassword,
    bool? passwordMatch,
  }) {
    return SingUpState(
      name: name ?? this.name,
      email: email ?? this.email,
      password: password ?? this.password,
      confirmPassword: confirmPassword ?? this.confirmPassword,
      passwordMatch: passwordMatch ?? this.passwordMatch,
    );
  }
}
