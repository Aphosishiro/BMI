import 'package:flutter/material.dart';

class RoundedButtons extends StatelessWidget {
  const RoundedButtons(
      {super.key, required this.icon, required this.onpressed});

  final IconData icon;
  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      elevation: 6.0,
      onPressed: onpressed,
      shape: const CircleBorder(),
      fillColor: const Color(0xFF111328),
      child: Icon(icon),
    );
  }
}