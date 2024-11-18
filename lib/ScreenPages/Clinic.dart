import 'package:flutter/material.dart';

class Clinic extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ClinicPage();
  }
}

class ClinicPage extends State<Clinic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clinic"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text(
          "Welcome to the Clinic Page",
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
      ),
    );
  }
}
