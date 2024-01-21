import 'package:chat_sphere/components/my_button.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Row(
              children: [
                Hero(
                  tag: 'logo',
                  child: Icon(
                    Icons.space_dashboard,
                    size: 50,
                  ),
                ),
                Text(
                  'Chat Sphere',
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            MyButton(
              text: 'Log In',
              color: Colors.blue[400],
              routeName: '/login',
            ),
            const SizedBox(
              height: 10,
            ),
            MyButton(
              text: 'Register',
              color: Colors.blue[800],
              routeName: '/register',
            ),
          ],
        ),
      ),
    );
  }
}
