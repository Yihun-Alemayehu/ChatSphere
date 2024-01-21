// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:chat_sphere/components/progress.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Color? color;
  final String text;
  final String routeName;

  const MyButton({
    Key? key,
    required this.color,
    required this.text,
    required this.routeName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 50,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      color: color,
      minWidth: double.infinity,
      onPressed: () {
        Navigator.of(context).pushNamed(routeName);
      },
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 24,
          color: Colors.white,
        ),
      ),
    );
  }
}
