// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  final String hint;
  final TextInputType? mykeyboardType;
  final TextEditingController controller;
  final bool? obsecureText;

  const MyTextField({
    Key? key,
    required this.hint,
    this.mykeyboardType,
    required this.controller,
    this.obsecureText,
  }) : super(key: key);

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    final mykeyboardType = widget.mykeyboardType;
    final controller = widget.controller;
    final obsecureText = widget.obsecureText;
    return TextField(
      obscureText: obsecureText ?? false,
      controller: controller,
      keyboardType: mykeyboardType,
      decoration: InputDecoration(
          hintText: widget.hint,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          )),
    );
  }
}
