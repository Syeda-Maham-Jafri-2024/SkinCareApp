import 'package:flutter/material.dart';
import 'package:flutter_travel_app/widgets/responsive_button.dart';
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
    "welcome_image2.jpg",
    "welcome_image3.png",
  ];
  List text = [
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                fit: BoxFit.fitHeight,
              ),
            ),
            child:Container(
              margin: const EdgeInsets.only(top : 30, left:15, right:15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                const AppHeadText(color: Color.fromARGB(255, 178, 181, 124), text: "Flawless &"),
                const AppHeadText(color: Color.fromARGB(255, 104, 106, 104), text: "Fabulous"), 
                const SizedBox(height: 10,),
                Container(
                  width: 320,
                  child: const AppText(
                    text: "Skincare is a vital ritual that nurtures and protects your skin, shielding it from daily stressors like pollution and UV rays.", 
                    textSize: 14,
                    color: Color.fromARGB(255, 120, 144, 156),),
                ),
                const SizedBox(height: 5,),
                ResponsiveButton(),
               ],
               ),
               Column(
                children: List.generate(3,(indexDots){
                  return Container(
                    margin: EdgeInsets.only(bottom: 1),
                    width: 8,
                    height:index==indexDots?28:10,    
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: index==indexDots? const Color.fromARGB(255, 180, 181, 124) :const Color.fromARGB(255, 180, 181, 124).withOpacity(0.3) ,
                    ),              
                   );
                }),
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
// git add . 
// git commit -m ""
// git push origi mai