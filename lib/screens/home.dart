import 'package:bmi_calculator/screens/reusablecard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'iconcontent.dart';

const activeCardColor = Color(0xFF1D1E33);
const inActiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color maleCardColor = inActiveCardColor;
  Color femaleCardColor = inActiveCardColor;

  void updateCardColor(int gender) {
    if (gender == 1) {
      if (maleCardColor == inActiveCardColor) {
        maleCardColor = activeCardColor;
        femaleCardColor = inActiveCardColor;
      } else {
        maleCardColor = inActiveCardColor;
      }
    }
    if (gender == 2) {
      if (femaleCardColor == inActiveCardColor) {
        femaleCardColor = activeCardColor;
        maleCardColor = inActiveCardColor;
      } else {
        femaleCardColor = inActiveCardColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final bottomContainerHeight = size.height * 0.08;

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text("BMI CALCULATOR"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateCardColor(1);
                      });
                    },
                    child: ReuseableCard(
                      color: maleCardColor,
                      cardChild: const Iconcontent(
                        iconData: FontAwesomeIcons.mars,
                        label: "MALE",
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateCardColor(2);
                      });
                    },
                    child: ReuseableCard(
                      color: femaleCardColor,
                      cardChild: const Iconcontent(
                        iconData: FontAwesomeIcons.venus,
                        label: "FEMALE",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseableCard(
                    color: activeCardColor,
                    cardChild: Column(),
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseableCard(
                    color: activeCardColor,
                    cardChild: Column(),
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    color: activeCardColor,
                    cardChild: Column(),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: size.height * 0.01),
            height: bottomContainerHeight,
            width: double.infinity,
            color: bottomContainerColor,
            child: const Center(
              child: Text(
                "Calculate",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
