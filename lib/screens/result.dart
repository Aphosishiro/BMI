import 'package:bmi_calculator/shared/constant.dart';
import 'package:bmi_calculator/widgets/reusablecard.dart';
import 'package:flutter/material.dart';

import '../widgets/bottom_button.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});

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
            child: Text(
              "YOUR RESULTS",
              style: kLabelBoldText,
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
                    "Overweight",
                    style: kResultText,
                  ),
                  Text(
                    "29.8",
                    style: kBmiText,
                  ),
                  Text(
                    "Your BMI result is quite low comrade you suppose don chop",
                    style: kBodyResultText,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            ontap: () {},
            name: "Re-Calculate",
          )
        ],
      ),
    );
  }
}
