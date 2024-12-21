// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:taskati/core/core.dart';
import 'package:taskati/core/navigation.dart';
import 'package:taskati/core/utils/functions/textStyle.dart';
import 'package:taskati/features/upload/uploadScreen.dart';

class Splashscreen extends StatefulWidget {
  Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 5),(){setState(() {   
        pushWihtReplacement(context,uploadScreen());

        
      });}
      
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset('assets/images/logo.json'),
            Text(
              'Taskati',
            style: getTitleTextStyle(fontSize: 30), 
            ),
            Text(
              'Its time to get organized',
              style: getBodyTextStyle(fontSize: 15,color: appColor.greyColor),
            ),
          ],
        ),
      ),
    );
  }
}
