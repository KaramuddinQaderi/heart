import 'dart:math';

import 'package:flutter/material.dart';

class Calculater {
  final int? height;
  final int? weight;

  double _bmi = 0;

  Calculater({@required this.height, @required this.weight});

  String calculatBMI() {
    _bmi = weight! / pow(height! / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You Have A Higher Than Normal Body Weight. Try To Exercise More.';
    } else if (_bmi >= 18.5) {
      return 'You Have A Normal Body Weight. Good Job!';
    } else {
      return 'You Have A Lower Than Normal Body Weight. You Can Eat A Bit More.';
    }
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }
}
