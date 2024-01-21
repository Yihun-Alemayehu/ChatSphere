import 'package:chat_sphere/screens/chat_screen.dart';
import 'package:chat_sphere/screens/login_screen.dart';
import 'package:chat_sphere/screens/registration_screen.dart';
import 'package:chat_sphere/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {


await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const ChatSphere());
}

class ChatSphere extends StatelessWidget {
  const ChatSphere({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const WelcomeScreen(),
        '/chat': (context) => const ChatScreen(),
        '/register': (context) => const RegistrationScreen(),
        '/login': (context) => const LoginScreen(),
      },
    );
  }
}
