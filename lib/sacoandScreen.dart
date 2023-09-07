import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:untitled3/constants.dart';
import 'package:untitled3/main.dart';

class SacondScreen extends StatelessWidget {
  const SacondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body:  SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 5),
                       const Animationtitle(texta: "في حالة  معدل موشر كتلة الجسم اكثر من 25  وزنك زائد انتبة على نفسك ",),
      
      
            Lottie.asset(
              "assets/3.json",
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



        
      
      
          ],
      
        ),
      )



    );
  }
}
