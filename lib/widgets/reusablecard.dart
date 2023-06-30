import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  const ReuseableCard(
      {super.key, required this.color, required this.cardChild, required this.onPress});

  final Color color;
  final Widget cardChild;
  final VoidCallback onPress; //find a way to make the onpress optional and not required

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: size.width * 0.05,
          vertical: size.height * 0.01,
        ),
        height: size.height * 0.24,
        width: size.width * 0.35,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: cardChild,
      ),
    );
  }
}
