import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Color? color;
  final String text;
  final String routeName;

  const MyButton({
    super.key,
    required this.text,
    required this.color,
    required this.routeName,
  });

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
