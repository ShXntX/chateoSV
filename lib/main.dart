//mateApp
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
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
            //safe area ubica debajo y antes de la isla y los gestos
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/icons/icon_app.png'),
                    Text(
                      'Connect friends easily & quickly',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 65,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
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
                        Image.asset('assets/icons/facebook.png'),
                        Image.asset('assets/icons/google.png'),
                        Image.asset('assets/icons/apple.png'),
                      ],
                    ),
                    Row(
                      spacing: 4,
                      children: [
                        Expanded(
                          child: Divider(
                            color: Color(0xFFCDD1D0),
                            thickness: 0.5,
                          ),
                        ),
                        Text(
                          'OR',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                        Expanded(
                          child: Divider(
                            color: Color(0xFFCDD1D0),
                            thickness: 0.5,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(16),
                          ),
                        ),
                        onPressed: () {},
                        child: Text('Sign up withn mail'),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: RichText(
                        text: TextSpan(
                          text: 'Existing account?',
                          style: TextStyle(
                            color: Color(0xFFB9C1BE),
                            fontSize: 14,
                          ),
                          children: [
                            TextSpan(
                              text: ' Log in',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
