import 'package:flutter/material.dart';

class BuildText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color textColor;
  const BuildText({
    Key? key,
    required this.text,
    required this.fontSize,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            fontSize: fontSize, color: textColor, fontWeight: FontWeight.bold));
  }
}
