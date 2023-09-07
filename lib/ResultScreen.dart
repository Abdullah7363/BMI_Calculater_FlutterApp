import 'package:flutter/material.dart';
import 'package:untitled3/constants.dart';


class Result extends StatelessWidget {
  const Result({super.key,required  this.bmiResult,
     this.bmiNumber,  this.bmiExplaning,  this.dailyCalories, this.getmyimgae});
  final Widget bmiResult;
  final Widget? bmiNumber;
  final Widget? bmiExplaning;
  final Widget? dailyCalories;
  final Widget? getmyimgae;


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Center(child: Text("النتيجة",style: TextStyle(color: Colors.white),))),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('نسبة كتلة الجسم',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
          SizedBox(height: 8,),
          Container(

            height: 400,
            width: double.infinity,
          
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 7, 255, 243),
              borderRadius: BorderRadius.circular(20)),

                child:   Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children:<Widget> [
            
              
                                                        // Center(child: dailyCalories),                  
                            
                   Center(child: bmiNumber),
                Center(
                child: bmiResult



              ),
              SizedBox(height: 5),
                Center(child: 
                            bmiExplaning
                            
                ),




              
              Center(child: 
                            getmyimgae
                            
                            
                            ),
                            Center(
                              child: dailyCalories,


                            )
                        
                    

            
              ],


            ),

          ),
          button(btext: "اعادة الحساب", bcolor:Colors.white , backcolor: Colors.greenAccent, tsize:20, onclick: (){
            Navigator.pop(context);



          })







      ],),


    );
  }

  Image Customimage() => Image.asset("images/man.png",height: 180,width: 250,fit: BoxFit.contain,);
}
