import 'package:chat_sphere/components/my_button.dart';
import 'package:chat_sphere/components/my_textfield.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

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
            const MyTextField(hint: 'Name'),
            const SizedBox(
              height: 20,
            ),
            const MyTextField(hint: 'Email address'),
            const SizedBox(
              height: 20,
            ),
            const MyTextField(hint: 'password'),
            const SizedBox(
              height: 20,
            ),
            MyButton(
              text: 'Register',
              color: Colors.blue[800],
              routeName: '/chat',
            )
          ],
        ),
      ),
    );
  }
}
