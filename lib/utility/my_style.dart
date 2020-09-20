import 'package:flutter/material.dart';

class MyStyle {
  Color darkColor = Colors.blue.shade900;
  Color primaryColor = Colors.teal.shade200;
  Color darkColor2 = Colors.white;

  SizedBox mySizebox() => SizedBox(
        width: 8.0,
        height: 16.0,
      );

  Text showTitle(String title) => Text(
        title,
        style: TextStyle(
          fontSize: 24.0,
          color: Colors.blue.shade900,
          fontWeight: FontWeight.bold,
        ),
      );

  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
      image: DecorationImage(
          image: AssetImage('assets/images/background.jpg'), fit: BoxFit.cover),
    );
  }

  Container showLogo() {
    return Container(
      width: 250.0,
      child: Image.asset('assets/images/logo.png'),
    );
  }

  MyStyle();
}
