import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:thaisila02/loginPage.dart';
import 'package:thaisila02/user.dart';
import 'loginPage.dart';
import 'package:thaisila02/utility/my_style.dart';
import 'package:thaisila02/utility/nomal_dialog.dart';
import 'package:http/http.dart' as http;
class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
//  String email, nickname, password;
//
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      resizeToAvoidBottomPadding: false,
//      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
//          Widget>[
//        Container(
//          child: Stack(
//            children: <Widget>[
//              Container(
//                padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
//                child: Text(
//                  'SignUp',
//                  style:
//                  TextStyle(fontSize: 80.0, fontWeight: FontWeight.bold),
//                ),
//              ),
//              Container(
//                padding: EdgeInsets.fromLTRB(260.0, 125.0, 0.0, 0.0),
//                child: Text(
//                  '.',
//                  style: TextStyle(
//                      fontSize: 80.0,
//                      fontWeight: FontWeight.bold,
//                      color: Colors.blueAccent),
//                ),
//              )
//            ],
//          ),
//        ),
//        Container(
//            padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
//            child: Column(
//              children: <Widget>[
//
//                TextField(
//                  onChanged: (value) => email = value.trim(),
//                  decoration: InputDecoration(
//                      labelText: 'EMAIL',
//                      labelStyle: TextStyle(
//                          fontFamily: 'Montserrat',
//                          fontWeight: FontWeight.bold,
//                          color: Colors.grey),
////                         hintText: 'EMAIL',
////                         hintStyle: ,
//                      focusedBorder: UnderlineInputBorder(
//                          borderSide: BorderSide(color: Colors.blueAccent))),
//                ),
//                SizedBox(height: 10.0),
//                TextField(
//                  onChanged: (value) => password = value.trim(),
//                  decoration: InputDecoration(
//                      labelText: 'PASSWORD ',
//                      labelStyle: TextStyle(
//                          fontFamily: 'Montserrat',
//                          fontWeight: FontWeight.bold,
//                          color: Colors.grey),
//                      focusedBorder: UnderlineInputBorder(
//                          borderSide: BorderSide(color: Colors.blueAccent))),
//                  obscureText: true,
//                ),
//                SizedBox(height: 10.0),
//                TextField(
//                  onChanged: (value) => nickname = value.trim(),
//                  decoration: InputDecoration(
//                      labelText: 'NICK NAME ',
//                      labelStyle: TextStyle(
//                          fontFamily: 'Montserrat',
//                          fontWeight: FontWeight.bold,
//                          color: Colors.grey),
//                      focusedBorder: UnderlineInputBorder(
//                          borderSide: BorderSide(color: Colors.blueAccent))),
//                ),
//                SizedBox(height: 50.0),
//                Container(
//                    height: 40.0,
//                    child: Material(
//                      borderRadius: BorderRadius.circular(20.0),
//                      shadowColor: Colors.lightBlueAccent,
//                      color: Colors.blueAccent,
//                      elevation: 7.0,
//                      child: GestureDetector(
//                        onTap: () { },
//                        child: Center(
//                          child: Text(
//                            'SIGNUP',
//                            style: TextStyle(
//                                color: Colors.white,
//                                fontWeight: FontWeight.bold,
//                                fontFamily: 'Montserrat'),
//                          ),
//                        ),
//                      ),
//                    )),
//                SizedBox(height: 20.0),
//                Container(
//                  height: 40.0,
//                  color: Colors.transparent,
//                  child: Container(
//                    decoration: BoxDecoration(
//                        border: Border.all(
//                            color: Colors.black,
//                            style: BorderStyle.solid,
//                            width: 1.0),
//                        color: Colors.transparent,
//                        borderRadius: BorderRadius.circular(20.0)),
//                    child: InkWell(
//                      onTap: () {
//                        Navigator.of(context).pop();
//                      },
//                      child: Center(
//                        child: Text('Go Back',
//                            style: TextStyle(
//                                fontWeight: FontWeight.bold,
//                                fontFamily: 'Montserrat')),
//                      ),
//                    ),
//                  ),
//                ),
//              ],
//            )),
//        SizedBox(height: 15.0),
////           Row(
////             mainAxisAlignment: MainAxisAlignment.center,
////             children: <Widget>[
////               Text(
////                 'New to Spotify?',
////                 style: TextStyle(
////                   fontFamily: 'Montserrat',
////                 ),
////               ),
////               SizedBox(width: 5.0),
////               InkWell(
////                 child: Text('Register',
////                     style: TextStyle(
////                         color: Colors.green,
////                         fontFamily: 'Montserrat',
////                         fontWeight: FontWeight.bold,
////                         decoration: TextDecoration.underline)),
////               )
////             ],
////           )
//      ],
//      ),
//
//    );
//  }

  String types, name, user, password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        title: Text('Sign Up'),
//      ),
      body: ListView(
        padding: EdgeInsets.all(30.0), // ขนาดรูป
        children: <Widget>[
          myLogo(),
          MyStyle().mySizebox(), // จัดอย่าให้ตัวอักษรชิดกับรูปเกิน
          showAppName(),
          MyStyle().mySizebox(),
          nameForm(),
          MyStyle().mySizebox(),
          userForm(),
          MyStyle().mySizebox(),
          passwordForm(),
          MyStyle().mySizebox(), // userRado()
          registerButton(),
          MyStyle().mySizebox(), // userRado()
          backButton(),
        ],
      ),
    );
  }

  //  Future<Null> registerThread()async()
  // Widget userRadio() => Row(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       children: <Widget>[
  //        Container(
  //         width: 250.0,
  //        child: Row(
  //         children: <Widget>[
  //          Radio(
  //           value: 'User',
  //          groupValue: types,
  //        onChanged: (value) {
  //          setState(() {
  //           types = value;
  //        });
  //     },
  //  ),
  // Text(
  //   'นักท่องเที่ยว',
  //   style: TextStyle(color: MyStyle().darkColor),
  //  )
  //  ],
  //  ),
  // ),
  //  ],
  // );
  Widget backButton() => Container(
        width: 250.0,
        child: RaisedButton(
          color: MyStyle().darkColor,
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
            'Go Back',
            style: TextStyle(color: Colors.white),
          ),
        ),
      );

  Widget registerButton() => Container(
        width: 250.0,
        child: RaisedButton(
          color: MyStyle().darkColor,
          onPressed: () {
            print('name = $name user = $user password = $password ');
            if (name == null ||
                name.isEmpty ||
                user == null ||
                user.isEmpty ||
                password == null ||
                password.isEmpty) {
              print('Have Space');
              normalDialog(context, 'มีช่องว่าง กรุณากรอกทุกช่อง');
            } //else if (tourist == null) {
            //normalDialog(context, '....');
            else {
   //           registerThread();
              checkUser();
            }
          },
          child: Text(
            'Register',
            style: TextStyle(color: Colors.white),
          ),
        ),
      );

  Future<Null> checkUser() async {

    String url = 'http://10.0.2.2/thaisila/getUserWhereUser.php?isAdd=true&User=$user';
//        'http://localhost/thaisila/addUser.php?isAdd=true&Name=$name&User=$user&Password=$password';
//    'http://localhost/thaisila/addUser.php?isAdd=true&User=$user';
//              'http://localhost/traditional/getUserWhereUser.php?isAdd=true&User=$user';
//        'http://127.0.0.1/thaisila/getUserWhereUser.php?isAdd=true&User=$user';
//    print(url);
//    print(user);
    try {
      final response =
      await http.get(url);
//      print(json.decode(response.body));
//      if (response.statusCode == 200) {
//        print(json.decode(response.body));
//      } else {
//        throw Exception('Failed to load photos');
//      }

      print(json.decode(response.body).runtimeType);
      if (json.decode(response.body).runtimeType != Null) {
        normalDialog(
            context, 'User นี้ $user มีคนอื่นใช้ไปแล้ว กรุณาเปลี่ยน User ใหม่');
      } else {
        registerThread();
      }
    } catch (e) {
      print(e);
    }
  }

  Future<Null> registerThread() async {
    String url =
             'http://10.0.2.2/thaisila/addUser.php?isAdd=true&Name=$name&User=$user&Password=$password';
//        'http://127.0.0.1/thaisila/addUser.php?isAdd=true&Name=$name&User=$user&Password=$password'
//    print(url);
    print("Register page");
    try {
      Response response = await Dio().get(url);
      print('res = $response');

      if (response.toString() == 'true') {
        Navigator.pop(context);
      } else {
        normalDialog(context, 'ไม่สามารถ สมัครสมาชิกได้ กรุณาลองใหม่');
      }
    } catch (e) {
      print(e);
    }
  }

  Widget nameForm() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 250.0,
            child: TextField(
              onChanged: (value) =>
                  name = value.trim(), // 9ัวเชื่อมกับตรง print ข้างาบน
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.face,
                  color: MyStyle().darkColor,
                ),
                labelStyle: TextStyle(color: MyStyle().darkColor),
                labelText: 'Name:',
                // ใส่กรอบ ช่อง login
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: MyStyle().darkColor)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: MyStyle().primaryColor)),
              ),
            ),
          ),
        ],
      );

  Widget userForm() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 250.0,
            child: TextField(
              onChanged: (value) => user = value.trim(),
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.account_box,
                  color: MyStyle().darkColor,
                ),
                labelStyle: TextStyle(color: MyStyle().darkColor),
                labelText: 'User:',
                // ใส่กรอบ ช่อง login
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: MyStyle().darkColor)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: MyStyle().primaryColor)),
              ),
            ),
          ),
        ],
      );

  Widget passwordForm() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 250.0,
            child: TextField(
              onChanged: (value) => password = value.trim(),
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.lock,
                  color: MyStyle().darkColor,
                ),
                labelStyle: TextStyle(color: MyStyle().darkColor),
                labelText: 'Password:',
                // ใส่กรอบ ช่อง login
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: MyStyle().darkColor)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: MyStyle().primaryColor)),
              ),
            ),
          ),
        ],
      );

  Row showAppName() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        MyStyle().showTitle('Sign Up "ThaiSiLa" '),
      ],
    );
  }

  Widget myLogo() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          MyStyle().showLogo(),
        ],
      );
}
