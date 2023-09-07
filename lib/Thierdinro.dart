import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:untitled3/constants.dart';
import 'package:untitled3/main.dart';

class ThirdInroc extends StatelessWidget {
  const ThirdInroc({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 7,),
            const Text("طريقة استخدام التطبيق",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                       const Animationtitle(texta: "   اولا قم بااختيار الجنس المحدد ثم طولك وعمرك واخيرا الوزن ",),


                Lottie.asset(
              "assets/gender.json",
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
      ),



    )

    ;
  }
}
