part of 'auth_bloc.dart';

sealed class AuthEvent {}

//evento para empezar a escuchar si tenemos un usario logeado
class CheckEventUser extends AuthEvent {}
