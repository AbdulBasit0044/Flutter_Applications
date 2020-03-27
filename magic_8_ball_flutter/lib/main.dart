import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          centerTitle: true,
          title: Text("Ask me anything !"),
        ),
        body: AskMePage(),
      ),
    );
  }
}

class AskMePage extends StatefulWidget {
  @override
  _AskMePageState createState() => _AskMePageState();
}

Random random = new Random();
int imageNumber = 1 + random.nextInt(5);

class _AskMePageState extends State<AskMePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  imageNumber = 1 + random.nextInt(5);
                });
              },
              child: Image(
                image: AssetImage('images/ball$imageNumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
