import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../shared/constant.dart';
import '../widgets/iconcontent.dart';
import '../widgets/reusablecard.dart';

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
                  child: ReuseableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    color: selectedGender == Gender.male
                        ? kActiveCardColor
                        : kInActiveCardColor,
                    cardChild: const Iconcontent(
                      iconData: FontAwesomeIcons.mars,
                      label: "MALE",
                    ),
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    color: selectedGender == Gender.female
                        ? kActiveCardColor
                        : kInActiveCardColor,
                    cardChild: const Iconcontent(
                      iconData: FontAwesomeIcons.venus,
                      label: "FEMALE",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseableCard(
                    onPress: () {},
                    color: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "HEIGHT",
                          style: kLabelText,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              "180",
                              style: kLabelBoldText,
                            ),
                            Text(
                              "CM",
                              style: kLabelText,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseableCard(
                    onPress: () {},
                    color: kActiveCardColor,
                    cardChild: const Column(),
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    onPress: () {},
                    color: kActiveCardColor,
                    cardChild: const Column(),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: size.height * 0.01),
            height: bottomContainerHeight,
            width: double.infinity,
            color: kBottomContainerColor,
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
