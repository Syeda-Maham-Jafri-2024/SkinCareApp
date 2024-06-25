import 'package:flutter/material.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  ResponsiveButton({ this.isResponsive, this.width, Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromARGB(255, 182, 155, 134)
      ),
      child: Row(
        children: [
        Image.asset("assets/icon-arrow.png")
      ]),
    );
  }
}