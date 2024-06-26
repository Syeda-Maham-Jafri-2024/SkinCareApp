// import 'package:flutter/material.dart';

// class ResponsiveButton extends StatelessWidget {
//   bool? isResponsive;
//   double? width;
//   ResponsiveButton({ this.isResponsive, this.width, Key? key}) : super(key: key);


//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: width,
//       height: 60,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10),
//         color: const Color.fromARGB(255, 219, 173, 149)
//       ),
//       child: Row(
//         children: [
//         Image.asset("assets/icon-arrow.png")
//       ]),
//     );
//   }
// }
import 'package:flutter/material.dart';

class ResponsiveButton extends StatelessWidget {
  final bool? isResponsive;
  final double? width;
  ResponsiveButton({ this.isResponsive, this.width, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 219, 173, 149),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/icon-arrow.png",
            width: 40, // Set your desired width
            height: 36, // Set your desired height
            color: Colors.white, // Set your desired color
          ),
        ],
      ),
    );
  }
}
