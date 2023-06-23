import 'package:bmi_calculator/screens/reusablecard.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text("BMI CALCULATOR"),
        centerTitle: true,
      ),
      body: const Column(
        children: [
          Row(
            children: [
              ReuseableCard(
                color: Colors.black,
              ),
              ReuseableCard(
                color: Colors.black,
              ),
            ],
          ),
          Row(
            children: [
              ReuseableCard(color: Colors.black),
            ],
          ),
          Row(
            children: [
              ReuseableCard(
                color: Colors.black,
              ),
              ReuseableCard(
                color: Colors.black,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
