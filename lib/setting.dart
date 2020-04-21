import 'package:flutter/material.dart';


class Setting extends StatelessWidget {

  final String pageText;

 Setting(this.pageText);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Setting'),),
      body: Center(
        child: Text(pageText),
      ),
    );
  }
}
