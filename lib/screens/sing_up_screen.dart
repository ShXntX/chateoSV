import 'package:flutter/material.dart';

class SingUpScreen extends StatelessWidget {
  const SingUpScreen({super.key});

  static const String routName = '/singUp';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          //es un formulario
          child: SingleChildScrollView(
            child: Column(
              spacing: 24,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      const TextSpan(
                        text: 'Sign up with ',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      TextSpan(
                        text: 'Email',
                        style: const TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: Color.fromARGB(255, 117, 202, 171),
                          decorationThickness: 4.0,
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                ),
                Text.rich(
                  textAlign: TextAlign.center,
                  TextSpan(
                    children: [
                      TextSpan(
                        text:
                            'Get chatting with friends and family today by signing up for our chat app!',
                      ),
                    ],
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Your name',
                    labelStyle: TextStyle(
                      color: Color.fromARGB(255, 117, 202, 171),
                    ),
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Your email',
                    labelStyle: TextStyle(
                      color: Color.fromARGB(255, 117, 202, 171),
                    ),
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Password',
                    labelStyle: TextStyle(
                      color: Color.fromARGB(255, 117, 202, 171),
                    ),
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Confirm Password',
                    labelStyle: TextStyle(
                      color: Color.fromARGB(255, 117, 202, 171),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),

        child: FilledButton(
          onPressed: () {},
          style: FilledButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 224, 224, 224),
          ),
          child: const Text(
            'Create account-uihut',
            style: TextStyle(color: Colors.black, fontSize: 14),
          ),
        ),
      ),
    );
  }
}
