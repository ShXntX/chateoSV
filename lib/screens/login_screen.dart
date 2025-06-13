import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static const String routName = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          spacing: 24,
          children: [
            const Text('Log in to Chatbox'),
            const Text(
              'Welcome back! Sign in using your social account or email to continue us',
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
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Your email',
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Password',
              ),
            ),
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
                onPressed: () {},
                child: const Text('Log in'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
