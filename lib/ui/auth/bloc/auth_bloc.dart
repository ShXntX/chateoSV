import 'package:bloc/bloc.dart';
import 'package:chateo_eela_2025/data/repositories/auth/auth_repository_impl.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthStateLoading()) {
    final authRepository = AuthRepositoryImpl();
    on<CheckEventUser>((event, emit) {
      return emit.forEach(
        authRepository.currentUser,
        onData: (user) {
          if (user == null) {
            print('User is currently signed out!');
            return AuthStateLoggedOut();
          } else {
            print('User is signed in!');
            return AuthStateLoggedIn();
          }
        },
      );
    });
  }
}
