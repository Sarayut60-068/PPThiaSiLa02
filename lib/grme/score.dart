import 'package:flutter/material.dart';
import 'package:thaisila02/grme/quizz/result.dart';
import 'package:thaisila02/grme/DragandDrop/DragandDrop.dart';


class score extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //this gonna give us total height and with of our device

    return Scaffold(
      appBar: AppBar(
        title: Text('คะแนน'),
        backgroundColor: Colors.lightBlueAccent,
      ),

      body: Stack(
        children: <Widget>[
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Image.network(
                    'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/BackGround%2Fclouds.png?alt=media&token=b576ee61-884f-4787-a3aa-12bce5e2ccd3',
                    width: 600.0,
                    height: 240.0,
                    fit: BoxFit.cover,
                  ),
//                  Text("$resultScore"),
//                  Text("$score"),


                  new Image.network(
                    'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/BackGround%2Fforest.png?alt=media&token=4813849d-e743-4a9b-9987-180ee92d85c2',
                    width: 600.0,
                    height: 240.0,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

