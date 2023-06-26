import 'package:flutter/material.dart';

class Iconcontent extends StatelessWidget {
  const Iconcontent({super.key, required this.iconData, required this.label});

  final IconData iconData;
  final String label;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: 50,
        ),
        SizedBox(
          height: size.height * 0.02,
        ),
        Text(
          label,
          style: const TextStyle(
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
