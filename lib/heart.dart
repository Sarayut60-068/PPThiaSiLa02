//import 'package:flutter/material.dart';
//import 'loginPage.dart';
//import 'home.dart';
//
//class heart extends StatefulWidget {
//  @override
//  _HeartState createState() => _HeartState();
//}
//
//class _HeartState extends State<Heart>{
//  String login = '...';
//  Widget currentWidget = showListproguct();
//
//  @override
//  void inrtState() {
//    super.initState();
//    findDisplayName();
//  }
//
//  Future<void> findDisplayName() async {
//    FirebaseAuth firebaseAuth = FirebaseAuth.instance;
//    setState(() {
//      login = firebaseUser.displayName;
//    });
//    print('login = $login');
//  }
//
//  Widget showLogin() {
//    return Text(
//      'Login by $login',
//      style: TextStyle(color: Colors.white),
//    );
//  }
//}
//
//
