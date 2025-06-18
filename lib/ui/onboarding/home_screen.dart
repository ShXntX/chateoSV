import 'package:chateo_eela_2025/ui/core/navigation/app_navigator.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  //static const String routeName = "/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            child: Image.asset(
              'assets/images/background.png',
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/icons/icon_app.png'),
                  const Text(
                    'Connect friends easily & quickly',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 55,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Text(
                    'Our chat app is the perfect way to stay connected with friends and family.',
                    style: TextStyle(
                      color: Color(0xFFB9C1BE),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color:
                              Colors.transparent, // o cualquier color de fondo
                          border: Border.all(
                            color: Colors.white,
                            width: 2,
                          ), // borde blanco
                          borderRadius: BorderRadius.circular(
                            100,
                          ), // esquinas redondeadas
                        ),

                        child: IconButton(
                          onPressed: () {},
                          icon: Image.asset('assets/icons/facebook.png'),
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        decoration: BoxDecoration(
                          color:
                              Colors.transparent, // o cualquier color de fondo
                          border: Border.all(
                            color: Colors.white,
                            width: 2,
                          ), // borde blanco
                          borderRadius: BorderRadius.circular(
                            100,
                          ), // esquinas redondeadas
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Image.asset('assets/icons/google.png'),
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        decoration: BoxDecoration(
                          color:
                              Colors.transparent, // o cualquier color de fondo
                          border: Border.all(
                            color: Colors.white,
                            width: 2,
                          ), // borde blanco
                          borderRadius: BorderRadius.circular(
                            100,
                          ), // esquinas redondeadas
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Image.asset('assets/icons/apple.png'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(),
                  Row(
                    children: const [
                      Expanded(
                        child: Divider(
                          color: Color(0xFFCDD1D0),
                          thickness: 0.5,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          'OR',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: Color(0xFFCDD1D0),
                          thickness: 0.5,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 40),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      onPressed: () {
                        //Navigator.pushNamed(context, SingUpScreen.routName);
                        Navigator.pushNamed(context, AppNavigator.signUp);
                      },
                      child: const Text('Sign up with mail'),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      //Navigator.pushNamed(context, LoginScreen.routName);
                      Navigator.pushNamed(context, AppNavigator.login);
                    },
                    child: const Text(
                      'Existing account? Log in',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
