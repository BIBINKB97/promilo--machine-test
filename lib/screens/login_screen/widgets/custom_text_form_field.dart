import 'package:flutter/material.dart';

class CustomTextFormField
    extends StatelessWidget {
  final String
      hintTxt;
  final TextEditingController?
      controller;
  final TextInputType
      keyboardType;
  final bool
      obscureText;

  const CustomTextFormField({
    required this.hintTxt,
    this.controller,
    this.keyboardType =
        TextInputType.text,
    this.obscureText =
        false,
    Key?
        key,
  }) : super(key: key);

  @override
  Widget build(
      BuildContext
          context) {
    return TextFormField(
      controller:
          controller,
      keyboardType:
          keyboardType,
      obscureText:
          obscureText,
      decoration:
          InputDecoration(
        hintText: hintTxt,
        hintStyle: TextStyle(fontSize: 17, color: Colors.black54, fontWeight: FontWeight.w500),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}