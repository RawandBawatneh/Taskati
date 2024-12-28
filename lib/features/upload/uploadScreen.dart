// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:taskati/core/core.dart';
import 'package:taskati/core/navigation.dart';
import 'package:taskati/core/utils/functions/textStyle.dart';
import 'package:taskati/features/home/HomeScreen.dart';
import 'package:taskati/widgets/button_w.dart';

class uploadScreen extends StatefulWidget {
  uploadScreen({super.key});

  @override
  State<uploadScreen> createState() => _uploadScreenState();
}

class _uploadScreenState extends State<uploadScreen> {
  @override
  String? path;
  final ImagePicker picker = ImagePicker();
  var nameController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              if (formKey.currentState!.validate() && path != null) {
                pushWihtReplacement(context, Homescreen());
              } else if (path == null) {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text(
                        "Error",
                        style: getSmallTextStyle(),
                      ),
                      content: Text(
                        "Please Upload Image",
                        style: getTitleTextStyle(weight: FontWeight.w400),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "OK",
                            style: getSmallTextStyle(),
                          ),
                        ),
                      ],
                    );
                  },
                );
              } else {
                print("Error");
              }
            },
            child: Text(
              "Done",
              style: getSmallTextStyle(),
            ),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 70,
                backgroundColor: appColor.avatarbackgroundColor,
                backgroundImage: path != null
                    ? FileImage(File(path!))
                    : NetworkImage("http://picsum.photos/200"),
              ),
              SizedBox(
                height: 20,
              ),
              buttonW(
                txt: "Upload From Camera",
                func: () async {
                  final XFile? image =
                      await picker.pickImage(source: ImageSource.camera);
                  if (image != null) {
                    setState(() {
                      path = image.path;
                    });
                  }
                  ;
                },
              ),
              SizedBox(
                height: 10,
              ),
              buttonW(
                txt: "Upload From Gallery",
                func: () async {
                  final XFile? image =
                      await picker.pickImage(source: ImageSource.gallery);
                  if (image != null) {
                    setState(() {
                      path = image.path;
                    });
                  }
                  ;
                },
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: appColor.buttonColor,
                indent: 20,
                endIndent: 20,
              ),
              Form(
                key: formKey,
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Name is required";
                    } else if (!RegExp("^[A-Z][a-z]{2,8}").hasMatch(value)) {
                      return "Name should be in the format of the RegExp please try again please ";
                    }
                    return null;
                  },
                  controller: nameController,
                  decoration: InputDecoration(
                    hintText: "Enter your name",
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: appColor.buttonColor),
                        borderRadius: BorderRadius.circular(20)),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: appColor.buttonColor),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
