import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  MyTextField(
      {this.hintText, this.labelText, this.icon, @required this.obscure, @required this.textEditingController});

  final String hintText;
  final String labelText;
  final Icon icon;
  final bool obscure;
  final TextEditingController textEditingController;

  @override
  _MyTextFieldState createState() => _MyTextFieldState(
      hintText: hintText, labelText: labelText, icon: icon, obscure: obscure, textEditingController: textEditingController);
}

class _MyTextFieldState extends State<MyTextField> {
  _MyTextFieldState({this.hintText, this.labelText, this.icon, this.obscure, this.textEditingController});

  String hintText;
  String labelText;
  Icon icon;
  bool obscure = false;
  TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      obscureText: this.obscure,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        icon: icon,
        hintText: hintText,
        labelText: labelText,
        // suffix: Icon(Icons.text_fields),
      ),
    );
  }
}
