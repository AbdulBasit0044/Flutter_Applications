import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import './views/video_cell.dart';

void main() => runApp(FirstApp());

class FirstApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new FirstAppState();
  }
}

class FirstAppState extends State<FirstApp> {
  var _isLoading = true;

  var videos;
  //Complete fetching data code to refer for future use
  _fetchData() async {
    print("Fetching data from network");
    final url = "https://api.letsbuildthatapp.com/youtube/home_feed";
    final response = await http.get(url);

    if (response.statusCode == 200) {
      //print(response.body);

      final map = json.decode(response.body);

      final videoJson = map["videos"];
      // videoJson.forEach((video){
      //   print(video["name"]);
      // });

      setState(() {
        _isLoading = false;
        this.videos = videoJson;
      });
      //print(map["videos"]);
    }
    //print(response);
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Real World Application is here!!"),
          actions: <Widget>[
            new IconButton(
              icon: new Icon(Icons.refresh),
              onPressed: () {
                print("Reloading...");
                setState(() {
                  _isLoading = true;
                });
                _fetchData();
              },
            )
          ],
        ),
        body: new Center(
          child: _isLoading
              ? new CircularProgressIndicator()
              : new ListView.builder(
                  itemCount: this.videos != null ? this.videos.length : 0,
                  itemBuilder: (context, i) {
                    final video = this.videos[i];
                    return new FlatButton(
                      padding: new EdgeInsets.all(0.0),
                      child: new VideoCell(video),
                      onPressed: () {
                        print(("Video cell is tapped $i"));
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) =>
                                    new DetailPage()
                            )
                        );
                      },
                    );
                    //return new VideoCell(video);

                    //return new Text("Row: $i");
                  },
                ),
        ),
      ),
    );
  }
}



class DetailPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Detail Page"),
      ),
      body: new Center(
        child: new Text("Not the best thing, about detail detail"),
      ),
    );
  }
}