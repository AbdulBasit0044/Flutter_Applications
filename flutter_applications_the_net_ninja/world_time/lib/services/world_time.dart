import 'package:http/http.dart';
import 'dart:convert';

class WorldTime{

  String location;  //location name for the UI
  String time; //
  String flag;
  String url;

  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async{

    Response response = await get('http://worldtimeapi.org/api/timezone/$url');
    Map data = jsonDecode(response.body);
    //print(data);

    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(2,3);
    //print(datetime);
    //print(offset);

    //create DateTime object
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));
    print(now);
    //set the time property
    time = now.toString();

  }

}

