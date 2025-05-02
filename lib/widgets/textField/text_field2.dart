
import 'package:flutter/material.dart';

class CustomTextField2 extends StatefulWidget{
  String hintText;
  TextEditingController textEditingController;
  CustomTextField2({required this.hintText, required this.textEditingController,});

  @override
  State<StatefulWidget> createState() {
    return custom_textField();
  }
}

class custom_textField extends State<CustomTextField2>{

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: widget.hintText,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                  color: Colors.lightBlueAccent
              )
          )
      ),
    );
  }

}