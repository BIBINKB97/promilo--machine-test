import 'package:flutter/material.dart';
import 'package:machine_test/view/widgets/text_style.dart';
import 'package:machine_test/utils.dart';

class CustomButton
    extends StatelessWidget {
  final VoidCallback?
      onPressed;
  final Color
      borderClr;
  const CustomButton(
      {super.key,
      required this.onPressed,
      required this.borderClr});

  @override
  Widget build(
      BuildContext
          context) {
    return GestureDetector(
      onTap:
          onPressed,
      child:
          Container(
        margin: EdgeInsets.only(top: 20),
        height: 50,
        decoration: BoxDecoration(
          color: kLightGrey,
          border: Border.all(color: borderClr, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
            child: CustomText(
          text: "Submit",
          clr: kwhite,
          fs: 20,
          fw: FontWeight.bold,
        )),
      ),
    );
  }
}
