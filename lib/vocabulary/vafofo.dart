import 'package:flutter/material.dart';
import 'package:thaisila02/vocabulary/cat.dart';

class vafofo extends StatelessWidget {

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
                          MaterialPageRoute(builder: (context) => cat()));
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        border: Border.all(width: 1.0, color: Colors.blue),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Text(
                        'แมว',
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