import 'package:flutter/material.dart';

void main() => runApp(FirstApp());

class FirstApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new FirstAppState();
  }
}

class FirstAppState extends State<FirstApp>{

  var _isLoading = true;

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Real World Application is here!!"),
          actions: <Widget>[
            new IconButton(icon: new Icon(Icons.refresh),
            onPressed: (){
              print("Reloading...");
              setState(() {
                _isLoading = false;
              });
            },)
          ],
        ),
        body: new Center(
          child: _isLoading ? new CircularProgressIndicator():
          new Text("Finished Loading..."),
          ),
      ),
    );
  }
}