import 'package:chat_sphere/components/my_button.dart';
import 'package:chat_sphere/components/my_textfield.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});

  final TextEditingController emailController =  TextEditingController();
  final TextEditingController passwordController =  TextEditingController();

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
              text: 'Log In',
              color: Colors.blue[300],
              callBackFunction: (){
                Navigator.of(context).pushNamed('/chat');
              }
            )
          ],
        ),
      ),
    );
  }
}
