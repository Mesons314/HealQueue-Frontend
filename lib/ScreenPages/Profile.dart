import 'package:flutter/material.dart';

class Profile extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return profilePage();
  }
}

class profilePage extends State<Profile>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: Colors.red,
      ),
    );
  }

}