import 'package:flutter/material.dart';
import 'package:thaisila02/vocabulary/vafofo.dart';


import '../chewie_list_item.dart';

class hadevocabulary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              new Column(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => vafofo()));
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        border: Border.all(width: 1.0, color: Colors.blue),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Text(
                        'ผัก ผลไม้ และอาหาร',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}



