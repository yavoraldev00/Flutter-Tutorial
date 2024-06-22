import 'package:flutter/material.dart';

class StyledBodyText extends StatelessWidget {
  // custom font style
  const StyledBodyText(this.text, {super.key}); // takes text as parameter

  final String text; // text parameter

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            color: Colors.brown[900], // font color
            fontWeight: FontWeight.bold, // font weight / boldness
            fontSize: 18)); // font size
  }
}
