import 'dart:math';

import 'package:flutter/material.dart';
import '../constants.dart';

class CalculatorBrain {
  CalculatorBrain({required this.weight,required this.height, required this.age,required this.gender});
  final int weight;
  final int height;
  final int age;
  Gender gender;
   late double _dailyCalories;
   late double _bmi;


  Color toolTipTextColor() {
    if (_bmi >= 25.0) {
      return Colors.red;
    } else if (_bmi > 18.5) {
      return Colors.green;
    } else {
      return Colors.cyan;
    }
  }

  Widget calculateBmi() {
    var _toolTipKey = GlobalKey();
    _bmi = weight / pow(height / 100, 2);
    return Column(
      children: <Widget>[
        const Text(
          'اضغط هنا لمعرفة تفاصيل موشر الكتلة',
          style: TextStyle(fontFamily: 'FredokaOne'),
        ),
        GestureDetector(
          onTap: () {
            dynamic tooltip = _toolTipKey.currentState;
            tooltip.ensureTooltipVisible();
          },
          child: Tooltip(
            
              padding: const EdgeInsets.all(20),
              height: 40,
              key: _toolTipKey,
              message: 'تحت الوزن الطبيعي بشكل خطير: 0-15'
                  '\n تحت الوزن الطبيعي : 18-16'
                  '\n طبيعي: 18.5-25'
                  '\n وزن زائد: 25-30'
                  '\n وزن زائد بشكل مفرط  : 30-35',
              textStyle: TextStyle(
                  fontFamily: 'FredokaOne',
                  fontSize: 20,
                  color: toolTipTextColor()),
              child: Text(
                _bmi.toStringAsFixed(1),
                style: const TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'FredokaOne',
                ),
              )),
        ),
      ],
    );
  }

  Widget getResults() {
    if (_bmi >= 25.0) {
      return const Bmititle(
        text: 'وزن زائد',
      );
    } else if (_bmi > 18.5) {
      return const Bmititle(
        text: ' وزن طبيعي' ,
      );
    } else {
      return const Bmititle(
        text: 'تحت الوزن الطبيعي',
      );
    }
  }

  Widget resultsExplain() {
    if (_bmi >= 25.0) {
      return const Bmiresult(
        textR:
        ' لابد  عمل حمية غذائية و عمل تمارين ',
        colorR: Color(0xFFdd2c00),
      );
    } else if (_bmi > 18.5) {
      return const Bmiresult(
        textR:
        '  وزنك طبيعي اهتم بالاكل عمل تمارين ',
        colorR: Color.fromARGB(255, 208, 243, 10),
      );
    } else {
      return const Bmiresult(
        textR: ' عليك با الاهتمام بالاكل وعمل تمارين',
        colorR: Color.fromARGB(255, 9, 89, 250),
      );
    }
  }

  Widget getimage(){
    if (_bmi>=25.0){

      return Getimage(img: "images/1.jpg",he:100 ,we: 150);

    }
    else if (_bmi>15.5){
            return Getimage(img: "images/2.jpg",he:100 ,we: 150);


    }
    

    else {

                  return Getimage(img: "images/3.jpg",he:100 ,we: 150);


    }

    








  }





  Widget dailyCalorieIntake() {
    var _toolTip = GlobalKey();

    if (gender == Gender.male) {
      //Mifflin St Jeor Equation
      _dailyCalories = (weight * 10) + (height * 6.25) - (age * 5) + 5;
    } else {
      //Mifflin St Jeor Equation
      _dailyCalories = (weight * 10) + (height * 6.25) - (age * 5) - 161;
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            dynamic tooltip = _toolTip.currentState;
            tooltip.ensureTooltipVisible();
          },
          child: Tooltip(
            key: _toolTip,
            message: 'سعرة حرارية يوميا',
            height: 5.0,
            verticalOffset: 48,
            waitDuration: const Duration(seconds: 1),
            textStyle: TextStyle(
                fontFamily: 'FredokaOne',
                fontWeight: FontWeight.w100,
                color: toolTipTextColor(),
                fontSize: 20),
            showDuration: const Duration(seconds: 2),
            child: Text(
              _dailyCalories.toStringAsFixed(0),
              style: const TextStyle(
                  fontFamily: 'FredokaOne',
                  fontSize: 30),
            ),
          ),
        ),
        const SizedBox(
          width: 10.0,
        ),
        Text(' السعرات  اليومية' ,
            style: TextStyle(
                fontFamily: 'FredokaOne',
          
                color: toolTipTextColor(),
                fontSize: 30)),
      ],
    );
  }
}


  Image customimagee() => Image.asset("images/man.png",height: 200,width: 320,fit: BoxFit.contain,);
