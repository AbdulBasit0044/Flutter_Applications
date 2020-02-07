import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home:Home(),
));


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('this is my second app'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange[600],
      ),
      body: Center(
        child: Text(
          'This is the text',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: Colors.blueAccent,
          ),
        ),

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Text("Click"),
        backgroundColor:Colors.deepOrange[600],
      ),
    );
  }
}
