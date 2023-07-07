import 'package:flutter/material.dart';

import '../shared/constant.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({super.key, required this.ontap, required this.name});

  final VoidCallback ontap;
  final String name;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final bottomContainerHeight = size.height * 0.08;

    return GestureDetector(
      onTap: ontap,
      // onTap: () {
      //   Navigator.pushNamed(context, "/results");
      // },
      child: Container(
        margin: EdgeInsets.only(top: size.height * 0.01),
        height: bottomContainerHeight,
        width: double.infinity,
        color: kBottomContainerColor,
        child: Center(
          child: Text(
            name,
            style: kLargeLabelText,
          ),
        ),
      ),
    );
  }
}
