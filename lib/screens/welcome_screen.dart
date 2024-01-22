import 'package:chat_sphere/components/my_button.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      upperBound: 60, 
      vsync: this,
    );

    _controller.forward();

    _controller.addListener(() {
      setState(() {});
    });
  }

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
            Row(
              children: [
                Hero(
                  tag: 'logo',
                  child: Icon(
                    Icons.space_dashboard,
                    size: _controller.value,
                  ),
                ),
                const Text(
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
              callBackFunction: (){
                Navigator.of(context).pushNamed('/login');
              },
            ),
            const SizedBox(
              height: 10,
            ),
            MyButton(
              text: 'Register',
              color: Colors.blue[800],
             callBackFunction: (){
                Navigator.of(context).pushNamed('/register');
              },
            ),
          ],
        ),
      ),
    );
  }
}
