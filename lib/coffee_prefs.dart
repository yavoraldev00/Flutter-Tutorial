import 'package:coffe_card/styled_body_text.dart';
import 'package:coffe_card/styled_button.dart';
import 'package:flutter/material.dart';

class CoffeePrefs extends StatefulWidget {
  // stateful widget that updates on changes | used in homescreen
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {
  int strenght = 1; // variable for coffee strenght
  int sugar = 1; // variable for coffee sugar content

  void increaseStrength() {
    setState(() {
      // increases coffe strenght, if at maximum, resets to 1
      strenght = strenght < 5 ? strenght + 1 : 1;
    });
  }

  void increaseSugar() {
    setState(() {
      // increases coffe strenght, if at maximum, resets to 0
      sugar = sugar < 5 ? sugar + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      // page content
      children: [
        Row(
          children: [
            const StyledBodyText("Strength: "), // coffee strenght segment
            for (int i = 0;
                i < strenght;
                i++) // puts images equal to the strenght number
              Image.asset(
                "assets/img/coffee_bean.png",
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            const Expanded(
                child:
                    SizedBox()), // white space between left text and right button
            StyledButton(
                onPressed: increaseStrength,
                child: const Text("+")) // add strenght button
          ],
        ),
        Row(
          children: [
            const StyledBodyText("Sugars: "), // coffee strenght segment
            if (sugar == 0)
              const StyledBodyText(
                  "No sugar..."), // if no sugars, displays text instead of images
            for (int i = 0;
                i < sugar;
                i++) // puts images equal to the sugar number
              Image.asset(
                "assets/img/sugar_cube.png",
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            const Expanded(
                child:
                    SizedBox()), // white space between left text and right button
            StyledButton(
                onPressed: increaseSugar,
                child: const Text("+")) // add sugar button
          ],
        )
      ],
    );
  }
}
