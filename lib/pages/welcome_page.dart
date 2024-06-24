import 'package:flutter/material.dart';

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
          width:300,
          height:400,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/" + images[index]),
              fit: BoxFit.cover,
            ),
          ),
          child:Container(
            margin: const EdgeInsets.only(top:150, left:20, right:20 ),
            child: Row(
              children: [
                Column(
                  children: [],
                )
              ],
            ),
          ),
         );
        },
      ),
    );
  }
}
