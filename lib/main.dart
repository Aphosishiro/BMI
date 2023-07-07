import 'package:bmi_calculator/screens/result.dart';
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
            activeTrackColor: Color(0xFFEB1555),
            inactiveTrackColor: Color(0xFF8D8E98),
            overlayColor: Color(0x26EB1555),
          ),
        ),
        initialRoute: "/",
        routes: {
          "/": (context) => const Home(),
          "/results": (context) => const ResultsScreen(),
        });
  }
}
