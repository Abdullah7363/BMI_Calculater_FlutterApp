import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

const ResultTitle=Text("النتجية ",style: TextStyle(fontSize: 40,fontFamily: "FredokaOne"));
const kActiveCardColor = Color(0xFF512b58);
const kInactiveCardColor = Color(0x29512b58);

const  TextStyle numberstyle=TextStyle(
color: Colors.white,
fontSize: 30,
fontWeight: FontWeight.bold


);



class Bmititle extends StatelessWidget {
  final String text;

  const Bmititle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return  Text(
      text,
      textAlign:TextAlign.center,

      style: TextStyle(fontSize: 30,
      fontWeight: FontWeight.bold
    ),

    );
  }
}


class Bmiresult extends StatelessWidget {
  final String textR;
  final Color colorR;

  const Bmiresult({super.key, required this.textR, required this.colorR });

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Text(
          textR,
          textAlign:TextAlign.center,

          style: TextStyle(fontSize: 24,color: colorR, fontFamily: 'FredokaOne',
          ),


        ),

      ],
    );
  }
}


class CustomButton extends StatelessWidget {
  final double bheight;
  final double biwidth;
  final String text;
  final Color bacolor;
  final Color txcolor;
  final double txsize;
  final Function? onpress;


  const CustomButton({super.key, required this.bheight, required this.biwidth, required this.text, required this.bacolor, required this.txcolor, required this.txsize,  this.onpress});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 50,vertical: 250),
        alignment: Alignment.center,
          height: bheight,
          width: biwidth,
          decoration: BoxDecoration(
            color: bacolor,
            borderRadius: BorderRadius.circular(20),

          ),
          child:Text(text,style: TextStyle(
            color: txcolor,

              fontSize: txsize,
              fontWeight: FontWeight.bold

          ),)


      ),
    );
  }
}


class GederCard extends StatelessWidget {
  // final double iconsize;
  // final Color iconcolor;
  final String typeimage;
  // final Color  backcolorr;

  final String?  fontfmaily;


  const GederCard({super.key,    this.fontfmaily, required this.typeimage});

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
          
          
        Center(child: Image.asset(typeimage,height: 80,width: 80 ,))


      ],



    );
  }
}

class ResueCard extends StatelessWidget {
  final Widget childcard;
  final Color? backcolor;
  final VoidCallback?  onpress;
  final double? hight;
  final double? wg;


  const ResueCard({super.key, required this.childcard,  this.backcolor,  this.hight,  this.wg, this.onpress});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onpress,

      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5),

        height: 100,
        width:170 ,
        child: childcard,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Colors.lightBlue,

        ),
        // decoration: BoxDec\oration(
        //   borderRadius: BorderRadius.circular(11),
        ),





    );
  }
}

class RoundedCard extends StatelessWidget {
  final Color backcolor;
  final String text;
  final IconData? iccon;
  final VoidCallback? onpresss;

  const RoundedCard({super.key, required this.backcolor, required this.text, this.iccon,required this.onpresss});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onpresss,
      child: Container(
        alignment: Alignment.center,
        height: 50,
        width: 50,
        margin:const EdgeInsets.all(10),
        // color:  backcolor,
          child: Text(text,style: (TextStyle(color: Colors.white,fontSize: 33)),),
        decoration: BoxDecoration(
          color: Colors.redAccent,
            borderRadius: BorderRadius.circular(50)),

        ),



    );
  }
}
class CustomImage extends StatefulWidget {
  // final Image image;

  const CustomImage({super.key});

  @override
  State<CustomImage> createState() => _CustomImageState();
}

class _CustomImageState extends State<CustomImage> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 70,
      width:double.infinity,
      child:Image.asset("sddsa.jpg",fit: BoxFit.fill) ,


    );
  }
}

class Discription extends StatelessWidget {
  const Discription({super.key, required this.text, required this.tcolor, required this.tsize,  this.tweth});
  final String text;
  final  Color tcolor;
  final double tsize;
  final FontWeight? tweth;


  @override
  Widget build(BuildContext context) {
    return  Container(
      alignment: Alignment.center,
      height: 40,
      width: double.infinity,
      child: Text(text,style: TextStyle(
        color: tcolor,
        fontSize:tsize ,
        fontWeight: tweth

      ),),


    );
  }
}
//
class button extends StatelessWidget {
  const button({super.key, required this.btext, required this.bcolor, required this.backcolor, required this.tsize, this.bweth, required this.onclick});

  final  String btext;

  final  Color bcolor;

  final  Color backcolor;

  final double tsize;

  final FontWeight? bweth;
  final VoidCallback onclick;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onclick,

        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 110,vertical: 10),
          margin: EdgeInsets.all(6),
        
          decoration: BoxDecoration(color: backcolor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(btext,
            style: TextStyle(fontSize: 20, fontWeight: bweth, color: bcolor),),


        ));
  }}


enum Gender{male,female}



class CustomSlider extends StatefulWidget {
  const CustomSlider({super.key});

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
    int heightdefalte=200;

  @override
  Widget build(BuildContext context) {
    return  

SleekCircularSlider(
  onChange: (value) {
    setState(() {

    // int heightdefalte=value.toInt();
  
      
    });

  
    
  },

  min: 120,
  max: 220,
  initialValue: 150,
  
  appearance: CircularSliderAppearance(
    size: 70,
    infoProperties: InfoProperties(
      
      
      bottomLabelStyle: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),
      modifier:(double value){
        return value.toString();


      }




    )



  ),






);




   
    
      
  }
}



class Calculatecard extends StatelessWidget {
  final Widget childcard;
  final Color? backcolor;
  final VoidCallback?  onpress;
  final double? hight;
  final double? wg;


  const Calculatecard({super.key, required this.childcard,  this.backcolor,  this.hight,  this.wg, this.onpress});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onpress,

      child: Container(

        height: 190,
        width:320 ,
        child: childcard,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Colors.lightBlue,

        ),
        // decoration: BoxDec\oration(
        //   borderRadius: BorderRadius.circular(11),
        ),





    );
  }
}


class Ageandwhigh extends StatelessWidget {
  const Ageandwhigh({super.key, required this.childconta});
  final Widget childconta;

  @override
  Widget build(BuildContext context) {
    return  Container(
    margin: EdgeInsets.symmetric(horizontal: 5),


      child: childconta,
      height: 160,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.lightBlue,
        borderRadius: BorderRadius.circular(30),
        


      ),





    );
  }
}




class Sliderrr extends StatefulWidget {
  const Sliderrr({super.key});


  @override
  State<Sliderrr> createState() => _SliderrrState();
}

class _SliderrrState extends State<Sliderrr> {
   int HEIGHTnum=120;
  @override
  Widget build(BuildContext context) {
    return SleekCircularSlider (
      max: 230,
      
      appearance: CircularSliderAppearance(
        customColors: CustomSliderColors(progressBarColors: [
           const Color(0xFFEB1555),
                              const Color(0xFFfe346e),
                              const Color(0xFF512b58)
          


        ]),
        infoProperties: InfoProperties(modifier: (double v){
          var mydata=v.toInt().toString();
          return "$mydata cm ";
        }),
        

      ),
      onChange:  (double value) {
        setState(() {
          HEIGHTnum=value.toInt();
          
        });


      }

   
    );
  }
}


class Getimage extends StatelessWidget {
  const Getimage({super.key, required this.img, required this.he, required this.we});
  final String img;
final double he;
final double we;

  @override
  Widget build(BuildContext context) {
    return  Image.asset(img,height: he,width: we,);
  }
}


class Animationtitle extends StatelessWidget {
  const Animationtitle({super.key, required this.texta});
  final String texta;


  @override
  Widget build(BuildContext context) {
    return  Container(
      alignment: Alignment.center,
      height: 120,
      width: double.infinity,
      
    
      color: Colors.lightBlueAccent,
      padding: EdgeInsets.all(13),
      margin: EdgeInsets.all(16),
      
      child: Text(texta,maxLines: 3,style: TextStyle(
        
        fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,



      ),),


    );
  }
}