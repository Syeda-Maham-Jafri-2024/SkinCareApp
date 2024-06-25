import 'package:flutter/material.dart';

class AppHeadText extends StatelessWidget {
  final Color color;
  final String text;

  const AppHeadText({required this.color, required this.text, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color, 
        fontSize: 30, 
        fontWeight: FontWeight.bold),
    );
  }
}