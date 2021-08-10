import 'dart:math';

class CalculatedBrain {

CalculatedBrain({this.weight,this.height});

  final int height;
  final int weight;

  double _bmi;

String calculateBMI() {
   _bmi = weight / pow(height / 100, 2);
  return _bmi.toStringAsFixed(2);
  }
String getResult(){
  if (_bmi >= 25){
      return "overweight";
    } else if (_bmi >18.5){
      return 'Normal';
    } else {
      return 'Underweight';
  }
}

String getInterpretation(){
  if (_bmi >= 25){
    return "You have higher than normal body weight, Try to exercise more!";
  } else if (_bmi >18.5){
    return 'You have normal body weight. Good job!';
  } else {
    return 'You have lower than normal body weight. You can eat a little bit more!';
  }
}
  }



