import 'package:flutter/material.dart';


class Normalbody extends StatefulWidget {
  const Normalbody({super.key});

  @override
  State<Normalbody> createState() => _NormalbodyState();
}

class _NormalbodyState extends State<Normalbody> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 6,

              child: Container(
                height: 70,
                width:double.infinity,
                child:Image.asset("sddsa.jpg",fit: BoxFit.fill) ,


              ),


              ),
          Expanded(child: Text("")),
          Expanded(child: Text("")),






        ],



      ),),




    );
  }
}
