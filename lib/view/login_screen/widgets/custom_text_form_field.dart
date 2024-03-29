import 'package:flutter/material.dart';
import 'package:machine_test/controller/provider/login_provider.dart';
import 'package:provider/provider.dart';

class CustomTextFormField
    extends StatelessWidget {
  final String
      hintTxt;
  final String
      errortxt;
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
    required this.errortxt,
  }) : super(key: key);

  @override
  Widget build(
      BuildContext
          context) {
    return TextFormField(
onChanged:
          (text) {
        Provider.of<LoginScreenProvider>(context, listen: false).updateButtonState();
      },
      validator:
          (value) {
        if (value!.isEmpty) {
          return errortxt;
        }
        return null;
      },
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
