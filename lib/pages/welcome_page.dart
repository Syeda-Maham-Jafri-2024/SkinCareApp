import 'package:flutter/material.dart';
import '../widgets/resuable_headtext.dart';
import '../widgets/reusable_text.dart';
 // Adjust the path accordingly

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "welcome_image1.png",
    "welcome_image2.png",
    "welcome_image3.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: images.length,
        itemBuilder: (_, index) {
          return Container(
            width: double.maxFinite,
            height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/" + images[index]),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppHeadText(color: Color.fromARGB(255, 133, 87, 70), text: "Flawless &"),
                AppHeadText(color: Color.fromARGB(255, 104, 106, 104), text: "Fabulous"), 
                SizedBox(height: 20,),
                Container(
                  width: 300,
                  child: AppText(
                    text: "Skincare is a vital ritual that nurtures and protects your skin, shielding it from daily stressors like pollution and UV rays.", 
                    textSize: 14,
                    color: const Color.fromARGB(255, 120, 144, 156),),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
