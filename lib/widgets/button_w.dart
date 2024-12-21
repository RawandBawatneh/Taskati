// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:taskati/core/core.dart';

class buttonW extends StatelessWidget {
  final String txt;
  const buttonW({
    required this.txt,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250, // Set the width of the button
      height: 50, // Set the height of the button
      child: ElevatedButton(
        onPressed: () {},
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
