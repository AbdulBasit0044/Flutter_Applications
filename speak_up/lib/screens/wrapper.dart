import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:speakup/screens/home/home.dart';
import 'package:speakup/screens/authenticate/authenticate.dart';
import 'package:speakup/models/user.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
    
    if(user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}