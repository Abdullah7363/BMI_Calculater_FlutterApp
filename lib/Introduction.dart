import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:untitled3/FirstIntro.dart';
import 'package:untitled3/Thierdinro.dart';
import 'package:untitled3/home.dart';
import 'package:untitled3/main.dart';
import 'package:untitled3/sacoandScreen.dart';

import 'constants.dart';


class IntroductionScreens extends StatefulWidget {
  const IntroductionScreens({super.key});

  @override
  State<IntroductionScreens> createState() => _IntroductionScreensState();
}

class _IntroductionScreensState extends State<IntroductionScreens> {
  PageController _controller=PageController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     
   
    
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [
              FirstIntro(),
              SacondScreen(),
              ThirdInroc(),
              BmiHome()


            ],

          ),
          Container(height: 30,width: double.infinity,color: Colors.amber,),

        
          Container(
            alignment: Alignment(0,0.6),
              child:SmoothPageIndicator(controller: _controller,count: 4)

            ),

          // CustomButton(
          //
          //   bheight: 40
          //   biwidth: 80,
          //   txcolor: Colors.white,
          //   text: "ابدا",
          //   bacolor: Colors.lightBlue,
          //   txsize: 30,
          //
          // )

    


     ]) );


    
  }
}
