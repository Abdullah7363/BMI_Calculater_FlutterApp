import 'package:flutter/material.dart';

class BmiHome extends StatefulWidget {
  const BmiHome({super.key});

  @override
  State<BmiHome> createState() => _BmiHomeState();
}

class _BmiHomeState extends State<BmiHome> {
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          
          SizedBox(height: 150,),
              Text("حاسبة مؤشر كتلة الجسم (BMI)",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                        SizedBox(height: 20,),


          Center(child: Image.asset("images/m.png",height: 200,width: 200,)),
        ],
      ),
    );
  }
}