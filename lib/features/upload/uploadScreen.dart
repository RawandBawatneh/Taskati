// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:taskati/core/core.dart';
import 'package:taskati/widgets/button_w.dart';

class uploadScreen extends StatefulWidget {
   uploadScreen({super.key});

  @override
  State<uploadScreen> createState() => _uploadScreenState();
}

class _uploadScreenState extends State<uploadScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           CircleAvatar(
            radius: 70,
            backgroundColor: appColor.avatarbackgroundColor,
           ),
           SizedBox(height: 20,),
           buttonW(txt:"Upload From Camera"),
           SizedBox(height: 10,),
          buttonW(txt: "Upload From Gallery"),
          ],
        ),
      ),
    );
  }
}
