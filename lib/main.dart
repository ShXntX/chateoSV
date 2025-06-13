//mateApp
//Mi primer proyecto jejjeje
import 'package:chateo_eela_2025/screens/home_screen.dart';
import 'package:chateo_eela_2025/screens/login_screen.dart';
import 'package:chateo_eela_2025/screens/sing_up_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: HomeScreen.routeName,

      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        LoginScreen.routName: (context) => LoginScreen(),
        SingUpScreen.routName: (context) => SingUpScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
