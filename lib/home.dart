import 'package:coffe_card/coffee_prefs.dart';
import 'package:coffe_card/styled_body_text.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  // homescreen widget
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // top app bar
          title: const Text(
            "My Coffee", // text displayed in app bar
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.brown[400],
          centerTitle: true,
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Container(
              // screen content
              color: Colors.brown[200],
              padding: const EdgeInsets.all(20),
              child: const StyledBodyText("How I like my coffee...")),
          Container(
              color: Colors.brown[100],
              padding: const EdgeInsets.all(20),
              child: const CoffeePrefs()), // screen defined in seperate file
          Expanded(
              // background image taking up all rest of available space
              child: Image.asset(
            "assets/img/coffee_bg.jpg",
            fit: BoxFit.fitWidth,
            alignment: Alignment.bottomCenter,
          ))
        ]));
  }
}
