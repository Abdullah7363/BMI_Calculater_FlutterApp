import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:untitled3/constants.dart';
import 'package:untitled3/main.dart';
// import 'package:untitled3/constants.dart';
// import 'package:untitled3/main.dart';

class FirstIntro extends StatelessWidget {
  const FirstIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 5,),
           const Animationtitle(texta: " في حالة  معدل موشر كتلة الجسم ما بين18-25  وزنك سليم ..اهتم ب صحتك استمر في التمارين والاكل الصحي"),
      
     
      
            Lottie.asset(
              "assets/1.json",
              repeat: true,
              reverse: true,
              animate: true
      
    
      
        ),
      


       button(btext: "ابدا",tsize: 20,backcolor: Colors.blueAccent,bcolor: Colors.white,
          onclick:(){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> Firstpage()));


          }

 
      )
      ])));
  
  


  }
}
