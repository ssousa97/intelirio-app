// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../constants.dart';

class CustomAppBar extends AppBar {
  CustomAppBar({Key? key}) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(primaryColor),
      leading: IconButton(
        icon: Icon(Icons.person, size: 40,),
        onPressed: () {},
        padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.settings, size: 40),
          padding: EdgeInsets.fromLTRB(0, 0, 30, 0),
        )
      ],
    );
  }
}
