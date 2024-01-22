import 'package:chat_sphere/components/my_button.dart';
import 'package:chat_sphere/components/my_textfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final TextEditingController nameController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();
  final _auth = FirebaseAuth.instance;

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
            const Hero(
              tag: 'logo',
              child: Icon(
                Icons.space_dashboard,
                size: 100,
              ),
            ),
            MyTextField(hint: 'Name', controller: nameController),
            const SizedBox(
              height: 20,
            ),
            MyTextField(
                hint: 'Email address',
                mykeyboardType: TextInputType.emailAddress,
                controller: emailController),
            const SizedBox(
              height: 20,
            ),
            MyTextField(
                obsecureText: true,
                hint: 'password',
                mykeyboardType: TextInputType.visiblePassword,
                controller: passwordController),
            const SizedBox(
              height: 20,
            ),
            MyButton(
              text: 'Register',
              color: Colors.blue[800],
              callBackFunction: () async {
                await _auth.createUserWithEmailAndPassword(
                  email: emailController.text,
                  password: passwordController.text,
                );
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
