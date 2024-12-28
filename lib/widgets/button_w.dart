// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:taskati/core/core.dart';

class buttonW extends StatelessWidget {
  final String txt;
  final double height;
    final double width;

  final Function()func;

   buttonW({
    required this.txt,
    required this.func,
    this.height=50,
    this.width=250,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width, // Set the width of the button
      height: height, // Set the height of the button
      child: ElevatedButton(
        onPressed: func,
        child: Text(
          txt,
          style: TextStyle(color: appColor.dartColor),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: appColor.buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
