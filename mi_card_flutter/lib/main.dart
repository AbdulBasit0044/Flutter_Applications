import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                height: 100,
                width: 100,
                //margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
                //padding: EdgeInsets.all(10),
                color: Colors.grey,
                child: Text('Hello'),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                height: 100,
                width: 100,
                //margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
                //padding: EdgeInsets.all(10),
                color: Colors.grey,
                child: Text('Hello'),
              ),
              Container(
                height: 100,
                width: 100,
                //margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
                //padding: EdgeInsets.all(10),
                color: Colors.grey,
                child: Text('Hello'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
