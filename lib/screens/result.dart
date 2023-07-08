import 'package:bmi_calculator/shared/constant.dart';
import 'package:bmi_calculator/widgets/reusablecard.dart';
import 'package:flutter/material.dart';
import '../widgets/bottom_button.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.bmiValue, required this.bmiInterpretation, required this.bmiResults});

  final String bmiValue;
  final String bmiResults;
  final String bmiInterpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Results"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "YOUR RESULTS",
                style: kLabelBoldText,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReuseableCard(
              color: const Color(0xFF1D1E33),
              onPress: () {},
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                   bmiResults,
                    style: kResultText,
                  ),
                  Text(
                    bmiValue,
                    style: kBmiText,
                  ),
                  Text(
                    bmiInterpretation,
                    style: kBodyResultText,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            ontap: () {
              Navigator.pop(context);
            },
            name: "Re-Calculate",
          )
        ],
      ),
    );
  }
}
