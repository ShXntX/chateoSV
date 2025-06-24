import 'package:bloc/bloc.dart';
import 'package:chateo_eela_2025/data/repositories/auth/auth_repository_impl.dart';
import 'package:meta/meta.dart';

part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<void> {
  OnboardingCubit() : super(());

  final _authRepository = AuthRepositoryImpl();

  //llamo al metodo que haceel login con google
  void signInWithGoogle() {
    _authRepository.signInWithGoogle();
  }

  // inicio de sesión con FB

  // Inicio de sesión con Apple ID
}
