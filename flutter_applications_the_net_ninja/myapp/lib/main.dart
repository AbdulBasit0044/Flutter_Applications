import 'dart:ui';

import 'package:flutter/cupertino.dart';
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
      body: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(30.0),
            color: Colors.cyan,
            child: Text('1'),
          ),
          Container(
            padding: EdgeInsets.all(30.0),
            color: Colors.blue,
            child: Text('2'),
          ),
          Container(
            padding: EdgeInsets.all(30.0),
            color: Colors.amber,
            child: Text('3'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Text("Click"),
        backgroundColor:Colors.deepOrange[600],
      ),
    );
  }
}
