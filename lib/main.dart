import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          title: const Text("My Coffee"),
          backgroundColor: Colors.brown[400],
          centerTitle: true,
        ),
        body: const Home()),
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.orange,
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.fromLTRB(10, 40, 0, 0),
        child: const Text("Hello!",
            style: TextStyle(
              fontSize: 18,
              letterSpacing: 4,
              decoration: TextDecoration.underline,
              fontStyle: FontStyle.italic,
            )));
  }
}
