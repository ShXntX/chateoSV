//mateApp
//Mi primer proyecto jejjeje
import 'package:chateo_eela_2025/screens/home_screen.dart';
import 'package:chateo_eela_2025/screens/login_screen.dart';
import 'package:chateo_eela_2025/screens/sing_up_screen.dart';
import 'package:chateo_eela_2025/screens/theme.dart';
import 'package:chateo_eela_2025/widgets/app_navigator.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

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
        AppNavigator.main: (_) => HomeScreen(),
        AppNavigator.login: (_) => LoginScreen(),
        AppNavigator.signUp: (_) => SingUpScreen(),
      },
      //asi llamo a la clase que tieme mis temna o mis colores theme.dart
      theme: AppTheme.light,
    );
  }
}




//https://firebase.google.com/docs/cli?hl=es-419&authuser=1&_gl=1*pa6k6*_ga*OTk0NTQxOTEyLjE3NTAxMjUzMjk.*_ga_CW55HF8NVT*czE3NTAxMjUzMjgkbzEkZzEkdDE3NTAxMjU0MjEkajI3JGwwJGgw#setup_update_cli