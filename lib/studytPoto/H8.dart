import 'package:flutter/material.dart';
import 'package:thaisila02/studytPoto/somePotoAndVedio/H/chicken.dart';
import 'package:thaisila02/studytPoto/somePotoAndVedio/H/crab.dart';
import 'package:thaisila02/studytPoto/somePotoAndVedio/H/duck.dart';
import 'package:thaisila02/studytPoto/somePotoAndVedio/H/frog.dart';
import 'package:thaisila02/studytPoto/somePotoAndVedio/H/shrimp.dart';
import 'package:thaisila02/studytPoto/somePotoAndVedio/H/snake.dart';

import '../constants.dart';
import '../loginPage.dart';
import '../study.dart';

class H8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'H8',
      home: Scaffold(
        appBar: AppBar(
          title: Text('สัตว์'),
          backgroundColor: Colors.yellow,
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => study()));
                })
          ],
        ),
        body: ListView(
          children: <Widget>[

            TitleWithMoreBtn(title: "ไก่", press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => chicken(),
                ),
              );
            }),
            TitleWithMoreBtn(title: "ปู", press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => crab(),
                ),
              );
            }),
            TitleWithMoreBtn(title: "เป็ด", press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => duck(),
                ),
              );
            }),
            TitleWithMoreBtn(title: "กบ", press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => frog(),
                ),
              );
            }),
            TitleWithMoreBtn(title: "กุ้ง", press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => shrimp(),
                ),
              );
            }),
            TitleWithMoreBtn(title: "งู", press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => snake(),
                ),
              );
            }),

     ],
        ),
      ),
    );
  }
}
