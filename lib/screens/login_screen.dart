import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  //static const String routName = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          // es un formulario
          child: SingleChildScrollView(
            child: Column(
              spacing: 24,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Log in',
                        style: const TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: Color.fromARGB(255, 117, 202, 171),
                          decorationThickness: 4.0,
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      const TextSpan(
                        text: ' to Chatbox',
                        style: TextStyle(
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
                            'Welcome back! Sign in using your social account or email to continue us',
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent, // o cualquier color de fondo
                        border: Border.all(
                          color: Colors.black,
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
                        color: Colors.transparent, // o cualquier color de fondo
                        border: Border.all(
                          color: Colors.black,
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
                      width: 55, // ancho en píxeles
                      height: 55,
                      decoration: BoxDecoration(
                        color: Colors.transparent, // o cualquier color de fondo
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ), // borde blanco
                        borderRadius: BorderRadius.circular(
                          100,
                        ), // esquinas redondeadas
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/icons/appleDark.png'),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Expanded(
                      child: Divider(color: Color(0xFFCDD1D0), thickness: 0.5),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        'OR',
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                    ),
                    Expanded(
                      child: Divider(color: Color(0xFFCDD1D0), thickness: 0.5),
                    ),
                  ],
                ),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Your email',
                  ),
                ),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  // estilo de teclado
                  //para que no se vea lo que se escribe
                  obscureText: true,
                  //keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FilledButton(onPressed: () {}, child: const Text('Log in')),
      ),
    );
  }
}
