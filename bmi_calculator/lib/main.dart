import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0XFF14193A),
        scaffoldBackgroundColor: Color(0XFF14193A),
        accentColor: Colors.purple,
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.white),
        ),
      ),
      home: InputPage(),
    );
  }
}
