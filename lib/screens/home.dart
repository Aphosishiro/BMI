import 'package:bmi_calculator/screens/reusablecard.dart';
import 'package:flutter/material.dart';

const activeCardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
          const Expanded(
            child: Row(
              children: [
                ReuseableCard(
                  color: activeCardColor,
                  cardChild: Column(),
                ),
                ReuseableCard(
                  color: activeCardColor,
                  cardChild: Column(),
                ),
              ],
            ),
          ),
          const Expanded(
            child: Row(
              children: [
                ReuseableCard(
                  color: activeCardColor,
                  cardChild: Column(),
                ),
              ],
            ),
          ),
          const Expanded(
            child: Row(
              children: [
                ReuseableCard(
                  color: activeCardColor,
                  cardChild: Column(),
                ),
                ReuseableCard(
                  color: activeCardColor,
                  cardChild: Column(),
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
