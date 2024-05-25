import 'package:coffe_card/styled_body_text.dart';
import 'package:coffe_card/styled_button.dart';
import 'package:flutter/material.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {
  int strenght = 1;
  int sugar = 1;

  void increaseStrength() {
    setState(() {
      strenght = strenght < 5 ? strenght + 1 : 1;
    });
  }

  void increaseSugar() {
    setState(() {
      sugar = sugar < 5 ? sugar + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const StyledBodyText("Strength: "),
            for (int i = 0; i < strenght; i++)
              Image.asset(
                "assets/img/coffee_bean.png",
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            const Expanded(child: SizedBox()),
            StyledButton(onPressed: increaseStrength, child: const Text("+"))
          ],
        ),
        Row(
          children: [
            const StyledBodyText("Sugars: "),
            if (sugar == 0) const StyledBodyText("No sugar..."),
            for (int i = 0; i < sugar; i++)
              Image.asset(
                "assets/img/sugar_cube.png",
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            const Expanded(child: SizedBox()),
            StyledButton(onPressed: increaseSugar, child: const Text("+"))
          ],
        )
      ],
    );
  }
}
