
import 'package:flutter/material.dart';

class CustomTextField4 extends StatefulWidget{
  String hintText;
  TextEditingController textEditingController;
  TextInputType textInputType;
  bool passwordVisible;
  CustomTextField4({required this.passwordVisible,required this.hintText, required this.textEditingController, required this.textInputType});

  @override
  State<StatefulWidget> createState() {
    return custom_textField();
  }
}

class custom_textField extends State<CustomTextField4>{

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.passwordVisible,
      decoration: InputDecoration(
          hintText: 'Password',
          suffixIcon: IconButton(icon: Icon(widget.passwordVisible
              ?Icons.visibility
              :Icons.visibility_off),
              onPressed: (){
                setState(() {
                  widget.passwordVisible = !widget.passwordVisible;
                });
              }
          ),

          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12)
          )
      ),
    );
  }

}