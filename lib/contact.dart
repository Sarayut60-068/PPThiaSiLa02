import 'package:flutter/material.dart';


class Contact extends StatelessWidget {

  final String pageText;

  Contact(this.pageText);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ติดต่อฉัน'),),
      body: Center(
        child: Text(pageText),
      ),
    );
  }
}
