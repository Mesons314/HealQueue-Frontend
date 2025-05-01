
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget{
  String hintText;
  TextEditingController textEditingController;
  TextInputType textInputType;
  CustomTextField({required this.hintText, required this.textEditingController, required this.textInputType});

  @override
  State<StatefulWidget> createState() {
    return custom_textField();
  }
}

class custom_textField extends State<CustomTextField>{

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: widget.textInputType,
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