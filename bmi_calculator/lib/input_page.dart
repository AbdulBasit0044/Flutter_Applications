import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "BMI CALCULATOR",
          ),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: AppCard(colour: Color(0xFF1D1E33)),
                  ),
                  Expanded(
                    child: AppCard(colour: Color(0xFF1D1E33)),
                  ),
                ],
              ),
            ),
            Expanded(
              child: AppCard(colour: Color(0xFF1D1E33)),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: AppCard(colour: Color(0xFF1D1E33)),
                  ),
                  Expanded(
                    child: AppCard(colour: Color(0xFF1D1E33)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AppCard extends StatelessWidget {
  AppCard({@required this.colour});

  Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
