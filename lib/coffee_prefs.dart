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
            const Text("Strength: "),
            for (int i = 0; i < strenght; i++)
              Image.asset(
                "assets/img/coffee_bean.png",
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            const Expanded(child: SizedBox()),
            FilledButton(
                style: FilledButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.brown),
                onPressed: increaseStrength,
                child: const Text("+"))
          ],
        ),
        Row(
          children: [
            const Text("Sugars: "),
            if (sugar == 0) const Text("No sugar..."),
            for (int i = 0; i < sugar; i++)
              Image.asset(
                "assets/img/sugar_cube.png",
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            const Expanded(child: SizedBox()),
            TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.brown),
                onPressed: increaseSugar,
                child: const Text("+"))
          ],
        )
      ],
    );
  }
}
