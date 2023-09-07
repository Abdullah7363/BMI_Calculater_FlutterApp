import 'package:flutter/material.dart';
import 'package:untitled3/Introduction.dart';
import 'package:untitled3/ResultScreen.dart';
import 'package:untitled3/conpunts.dart';
// import 'ResultScreen.dart';
// import 'conpunts.dart';
import 'constants.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'حساب الوزن المناسب',
      theme: ThemeData(
        // fontFamily: "Changa",

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Directionality(
        textDirection: TextDirection.rtl,
        child: IntroductionScreens()),
    );
  }
}
class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  Color malecolor=kInactiveCardColor;
  Color femalecolor=kInactiveCardColor;
  int heightdefalte=200;
  int agedefalt=28;
  int wightdefalt=50;
  Gender? typeGender;
  bool? isActive;



 
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      backgroundColor: Color.fromARGB(255, 249, 229, 229),


      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 68, 230, 255),
          title:Center(child: Text("حساب مؤشر كتلة الجسم",style: TextStyle(color: Colors.white),))),
      body: SafeArea(
        top: true,
        left: true,
        
        child:
        Column(
        
          

          children: [
            SizedBox(height: 3),


          Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween ,
            children: [
            Expanded(child: ResueCard(onpress: (){
              setState(() {
                typeGender=Gender.male;
              });

            },


              backcolor: typeGender==Gender.male
              ?
                malecolor=kActiveCardColor
              :
                malecolor=kInactiveCardColor

              ,childcard: GederCard(
                typeimage: "images/femal.png",

          // iicon: Icons.male,iconsize: 100,
          // iconcolor: typeGender==Gender.male ?
          // malecolor=Colors.lightBlue :
          // malecolor=const Color(0x29d2fafb),
          // textcolor: typeGender==Gender.male
          // ?
          //   malecolor=Colors.lightBlue
          // :
          // malecolor=Color(0x29d2fafb) ,


        )

              ,)),
              SizedBox(width: 5,),
            ResueCard(
             
              onpress: (){
                setState(() {
                  typeGender=Gender.female;
                });

              },
              // backcolor: femalecolor==Gender.female
              // ?
              //     femalecolor=kActiveCardColor
              //     :
              //     femalecolor=kInactiveCardColor

            
              childcard: GederCard(
                typeimage: "images/man.png",
                // iconsize: 100,
                // iicon: Icons.female,
                // iconcolor: typeGender==Gender.female
                //   ?
                //     femalecolor=Colors.redAccent
                //     :
                // femalecolor=Color(0x29d2fafb) ,

                // backcolorr: typeGender==Gender.male
                // ?
                // malecolor=Colors.black
                // :
                // malecolor=Colors.blue
                
                
                





                // textcolor: typeGender==Gender.female
                // ?
                //     femalecolor=Colors.redAccent
                //     :
                // femalecolor=Color(0x29d2fafb) ,



              ),



            )



              ],



            ),
            SizedBox(height: 5,),
            

             const Calculatecard(childcard: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 4,),
                Text("الطول",style: 
                TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                 SizedBox(height: 3),
                 Sliderrr(),
                   
                
            ]),),
            SizedBox(height: 7,),
             Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Ageandwhigh(childconta: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  const Text("العمر",style: numberstyle,),
                  
                                Text("$agedefalt".toString(),style: numberstyle,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                  
                      RoundedCard(text: "+",backcolor: Colors.green,
                      onpresss: () {
                        setState(() {
                          agedefalt++;
                        });
                      },
                     

                      ),
                      
                      RoundedCard(text: "-",backcolor: Colors.green,
                      onpresss: () {
                        setState(() {
                          agedefalt--;
                        });
                      },
                     

                      ),




                    ],


                  )

            ],)),
            Ageandwhigh(childconta: 


             Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  Text("الوزن",style:numberstyle )
                    
                    
                     
                ,
                  
                                Text("$wightdefalt".toString(),style: numberstyle,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                  
                      RoundedCard(text: "+",backcolor: Colors.green,
                      onpresss: () {
                        setState(() {
                          wightdefalt++;
                        });
                      },
                     

                      ),
                      
                      RoundedCard(text: "-",backcolor: Colors.green,
                      onpresss: () {
                        setState(() {
                          wightdefalt--;
                        });
                      },
                     

                      ),




                    ],


                  )

            ],)),


               ]
            
            ),






             Spacer(),
           
            SizedBox(height: 5,),
            button(btext: "حساب المؤشر", bcolor: Colors.white, 
            backcolor: Colors.lightBlue, tsize: 25, onclick: (){

              var countmass=CalculatorBrain(
                weight: wightdefalt,height:heightdefalte,age: agedefalt,gender: typeGender!  


              );

                Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> Result(
                    bmiNumber: countmass.calculateBmi(),
                    bmiResult: countmass.getResults(),
                    bmiExplaning: countmass.resultsExplain(),
                    getmyimgae: countmass.getimage(),
                    dailyCalories: countmass.dailyCalorieIntake(),
                    

                    


                  )));


            })
         
          

               ],


             ),
            
                        
           
            
              

            
       
                    // bmiNumber: comutee.calculateBmi(),


      ));
                  
              


              




  }
}













    //  Expanded(child: ResueCard(
    //           backcolor: kActiveCardColor,
    //           childcard:Row(
    //             mainAxisAlignment: MainAxisAlignment.spaceAround,
    //             children: [
    //               Column(
    //                 crossAxisAlignment: CrossAxisAlignment.center,
    //                 children: [
    //                   Text('الوزن'),
    //                   // Icon(Icons.tex)
    //                   Text(wightdefalt.toString()),
    //                   Row(
    //                     mainAxisAlignment: MainAxisAlignment.spaceAround,
    //                     children: [
    //                       RoundedCard(backcolor: Colors.grey, text: "+",
    //                         onpresss: (){
    //                         setState(() {
    //                           wightdefalt++;



    //                         });


    //                         },

    //                       ),
    //                       RoundedCard(backcolor: Colors.grey, text: "-",
    //                         onpresss: (){
    //                           setState(() {
    //                             wightdefalt--;
    //                           });


    //                         },

    //                       ),


    //                     ],
    //                   )



    //                 ],),
    //               SizedBox(width: 6),

    //               Expanded(child:
    //               ResueCard(
    //                 backcolor: kActiveCardColor,
    //                 childcard:Row(
    //                   mainAxisAlignment: MainAxisAlignment.spaceAround,
    //                   children: [
    //                   Column(
    //                   crossAxisAlignment: CrossAxisAlignment.center,
    //                   children: [
    //                     Text('العمر'),
    //                     Text(agedefalt.toString()),
    //                     Row(
    //                       mainAxisAlignment: MainAxisAlignment.spaceAround,
    //                       children: [
    //                         RoundedCard(backcolor: Colors.grey, text: "+",
    //                           onpresss: (){
    //                             setState(() {
    //                               agedefalt++;
    //                             });


    //                           },

    //                         ),
    //                         RoundedCard(backcolor: Colors.grey, text: "-",
    //                           onpresss: (){
    //                             setState(() {
    //                               agedefalt--;
    //                             });


    //                           },

    //                         ),


    //                       ],
    //                     )



    //                   ],),



    //               ])



    //               ))],
    //           ) ,


    //         )),





    //             Navigator.push(context,
    //               MaterialPageRoute(builder: (context)=> Result(