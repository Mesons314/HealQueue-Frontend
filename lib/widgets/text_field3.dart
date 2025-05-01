
import 'package:flutter/material.dart';

class CustomTextField3 extends StatefulWidget{
  String hintText;
  TextEditingController textEditingController;
  TextInputType textInputType;
  final int MaxLines;
  CustomTextField3({required this.MaxLines,required this.hintText, required this.textEditingController, required this.textInputType});

  @override
  State<StatefulWidget> createState() {
    return custom_textField();
  }
}

class custom_textField extends State<CustomTextField3>{

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: widget.textInputType,
      maxLines: widget.MaxLines,
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