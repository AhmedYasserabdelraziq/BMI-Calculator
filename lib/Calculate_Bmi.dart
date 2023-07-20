import 'dart:math' ;
import 'package:flutter/cupertino.dart';
class CalculateBrain{
CalculateBrain({@required this.weight,@required this.hieght});
 final int weight;
  final int hieght;
  double bmi;
  String calculateBMI(){
     bmi=weight/pow(hieght/100, 2);
   return bmi.toStringAsFixed(1);
  }
  String getResult(){
    if(bmi>=25){
      return 'Overweight';
    } else if(bmi>18.5){
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }
  String getInterpretation(){
      if(bmi>=25){
        return 'You have a higher than normal body weight. Try to exercise more';
      } else if(bmi>=18.5){
        return 'You have a normal body weight. Good job';
      } else {
        return 'You have a lawer than normal body weight. You can eat a bit more';
      }
  }
}