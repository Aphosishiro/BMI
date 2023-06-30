import 'package:flutter/material.dart';
import 'screens/home.dart';

void main() {
  runApp(const BmiCalculator());
}

class BmiCalculator extends StatelessWidget {
  const BmiCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BMI Calculator",
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF0A0E21),
        ),
        sliderTheme: const SliderThemeData(
          thumbColor: Color(0xFFEB1555),
          activeTrackColor: Colors.white,
          inactiveTrackColor: Color(0xFF8D8E98),
          overlayColor: Color(0x26EB1555),
        ),
      ),
      home: const Home(),
    );
  }
}
