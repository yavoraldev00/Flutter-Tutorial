import 'package:flutter/material.dart';

class StyledButton extends StatelessWidget {
  // custom button style

  // takes function and Widget as parameter
  const StyledButton({super.key, required this.onPressed, required this.child});

  final Widget child; // widget, used for button child
  final void Function() onPressed; // function that executes onPress

  @override
  Widget build(BuildContext context) {
    // button styling
    return TextButton(
        style: TextButton.styleFrom(
            backgroundColor: Colors.brown[700], // button background
            foregroundColor: Colors.white, // button text color
            shape: const RoundedRectangleBorder(
                // button shape
                borderRadius: BorderRadius.all(Radius.circular(5)))),
        onPressed: onPressed, // function executed onPress
        child: child); // child inside TextButton container
  }
}
