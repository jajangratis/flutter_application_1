import 'package:flutter/material.dart';
import 'package:flutter_application_1/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
          body: 
          GradientContainer(
            colors: [
              Color.fromARGB(255, 76, 9, 193),
              Color.fromARGB(255, 116, 9, 193),
              Color.fromARGB(255, 15, 9, 193),
            ]),
        ),
    ),
  );
}

