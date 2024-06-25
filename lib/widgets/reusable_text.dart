import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String text;
  final double textSize;final Color color;

  const AppText({required this.text, required this.textSize, Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: textSize,
        fontWeight: FontWeight.normal,
        color: color),
    );
  }
}
