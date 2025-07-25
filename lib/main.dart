//mateApp
//Mi primer proyecto jejjeje
import 'package:chateo_eela_2025/firebase_options.dart';
import 'package:chateo_eela_2025/ui/chat_screens/home/home_chat_screen.dart';
import 'package:chateo_eela_2025/ui/chat_screens/profile/proflie_screen.dart';
import 'package:chateo_eela_2025/ui/core/navigation/app_navigator.dart';
import 'package:chateo_eela_2025/ui/core/themes/theme.dart';
import 'package:chateo_eela_2025/ui/login/cubit/login_cubit.dart';
import 'package:chateo_eela_2025/ui/login/view/login_screen.dart';
import 'package:chateo_eela_2025/ui/onboarding/cubit/onboarding_cubit.dart';
import 'package:chateo_eela_2025/ui/onboarding/home_screen.dart';
import 'package:chateo_eela_2025/ui/sing_up/cubit/sing_up_cubit.dart';
import 'package:chateo_eela_2025/ui/sing_up/sing_up_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//void main() => runApp(const MyApp());
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',

      //initialRoute: HomeScreen.routeName,

      // routes: {
      //   HomeScreen.routeName: (context) => HomeScreen(),
      //   LoginScreen.routName: (context) => LoginScreen(),
      //   SingUpScreen.routName: (context) => SingUpScreen(),
      // },
      routes: {
        // reemplaza al home
        AppNavigator.main: (_) => BlocProvider(
          create: (context) => OnboardingCubit(),
          child: HomeScreen(),
        ),

        AppNavigator.login: (_) => BlocProvider(
          create: (context) => LoginCubit(),
          child: LoginScreen(),
        ),

        //este tiene un cubit pilas aqui
        AppNavigator.signUp: (_) => BlocProvider(
          create: (context) => SingUpCubit(),
          child: SingUpScreen(),
        ),

        AppNavigator.chatHomeScfreen: (_) => HomeChatScreen(),
        AppNavigator.profileScreen: (_) => ProflieScreen(),
      },

      //asi llamo a la clase que tieme mis temna o mis colores theme.dart
      theme: AppTheme.light,
    );
  }
}




//https://firebase.google.com/docs/cli?hl=es-419&authuser=1&_gl=1*pa6k6*_ga*OTk0NTQxOTEyLjE3NTAxMjUzMjk.*_ga_CW55HF8NVT*czE3NTAxMjUzMjgkbzEkZzEkdDE3NTAxMjU0MjEkajI3JGwwJGgw#setup_update_cli