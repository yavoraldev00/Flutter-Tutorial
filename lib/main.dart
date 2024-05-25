import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          title: const Text("My Coffee"),
          backgroundColor: Colors.brown[400],
          centerTitle: true,
        ),
        body: const Text("Hello!")),
  ));
}
