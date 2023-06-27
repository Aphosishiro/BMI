import 'package:bmi_calculator/screens/reusablecard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'iconcontent.dart';

const activeCardColor = Color(0xFF1D1E33);
const inActiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

enum Gender { male, female, none }

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Gender selectedGender = Gender.none;

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
                        selectedGender = Gender.male;
                      });
                    },
                    child: ReuseableCard(
                      color: selectedGender == Gender.male
                          ? activeCardColor
                          : inActiveCardColor,
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
                        selectedGender = Gender.female;
                      });
                    },
                    child: ReuseableCard(
                      color: selectedGender == Gender.female
                          ? activeCardColor
                          : inActiveCardColor,
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
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
