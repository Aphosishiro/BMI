import 'dart:math';

class Calculator {
  final int height;
  final int weight;
  // final double bmi;

  late double _bmi;

  Calculator({required this.height, required this.weight});

  String calulateBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  getResults() {
    if (_bmi >= 25) {
      return "overweight";
    } else if (_bmi > 18.5) {
      return "normal";
    } else {
      return "underweight";
    }
  }

  getInterpretation() {
    if (_bmi >= 25) {
      return "You have a higher than normal body weight, Exercise more.";
    } else if (_bmi > 18.5) {
      return "You have a normal body weight";
    } else {
      return "You have a lower than normal body weight, Eat more.";
    }
  }


}