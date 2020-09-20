import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:thaisila02/utility/my_style.dart';
import 'package:thaisila02/utility/nomal_dialog.dart';
//import 'loginPage.dart';
import 'model/user_model.dart';
import 'user.dart';
import 'signup.dart';
import 'package:thaisila02/loginPage.dart';
import 'framework.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/signup': (BuildContext context) => new SignupPage()
      },
      home: new LoginPage(),
    );
  }
}

class MyStateful extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyStatefulState();
  }
}

class _MyStatefulState extends State<MyStateful> {
  @override
  Widget build(BuildContext context) {}
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

//class _LoginPageState extends State<LoginPage> {
//  final User user = new User();
//
//  @override
//  Widget build(BuildContext context) {
//    final TextField _txtUserName = new TextField(
//      decoration: new InputDecoration(
//        hintText: 'Username',
//        contentPadding: new EdgeInsets.all(10.0),
//        border: InputBorder.none,
//      ),
//      keyboardType: TextInputType.text,
//      autocorrect: false,
//      onChanged: (text) {
//        setState(() {
//          this.user.userNameString = text;
//        });
//      },
//    );
//
//    // final TextField _txtEmail = new TextField(
//    //   decoration: new InputDecoration(
//    //     hintText: 'Email',
//    //     contentPadding: new EdgeInsets.all(10.0),
//    //     border: InputBorder.none,
//    //   ),
//    //   keyboardType: TextInputType.text,
//    //   autocorrect: false,
//    //   onChanged: (text) {
//    //     setState(() {
//    //       this.user.emailString = text;
//    //     });
//    //   },
//    // );
//
//    // final TextField _txtPassword = new TextField(
//    //   decoration: new InputDecoration(
//    //     hintText: 'Password',
//    //     contentPadding: new EdgeInsets.all(10.0),
//    //     border: InputBorder.none,
//    //   ),
//    //   keyboardType: TextInputType.text,
//    //   autocorrect: false,
//    //   obscureText: true,
//    //     onChanged: (text){
//    //     setState(() {
//    //       this.user.passwordString = text;
//    //     });
//    //     },
//    // );
//    return new Scaffold(
//        resizeToAvoidBottomPadding: false,
//        body: Column(
//          crossAxisAlignment: CrossAxisAlignment.start,
//          children: <Widget>[
//            Container(
//              child: Stack(
//                children: <Widget>[
//                  Container(
//                    padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
//                    child: Text('Welcome to',
//                        style: TextStyle(
//                            fontSize: 50.0, fontWeight: FontWeight.bold)),
//                  ),
//                  Container(
//                    padding: EdgeInsets.fromLTRB(16.0, 175.0, 0.0, 0.0),
//                    child: Text('Thai Sign Language for Studying',
//                        style: TextStyle(
//                            fontSize: 20.0, fontWeight: FontWeight.bold)),
//                  ),
//                  Container(
//                    padding: EdgeInsets.fromLTRB(270.0, 200.0, 0.0, 0.0),
//                    child: Text('ThaiSiLa',
//                        style: TextStyle(
//                            fontSize: 10.0,
//                            fontWeight: FontWeight.bold,
//                            color: Colors.blueAccent)),
//                  )
//                ],
//              ),
//            ),
//            Container(
//                padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
//                child: Column(
//                  children: <Widget>[
//                    TextField(
//                      decoration: InputDecoration(
//                          labelText: 'EMAIL',
//                          labelStyle: TextStyle(
//                              fontFamily: 'Montserrat',
//                              fontWeight: FontWeight.bold,
//                              color: Colors.grey),
//                          focusedBorder: UnderlineInputBorder(
//                              borderSide:
//                                  BorderSide(color: Colors.blueAccent))),
//                    ),
//                    SizedBox(height: 20.0),
//                    TextField(
//                      decoration: InputDecoration(
//                          labelText: 'PASSWORD',
//                          labelStyle: TextStyle(
//                              fontFamily: 'Montserrat',
//                              fontWeight: FontWeight.bold,
//                              color: Colors.grey),
//                          focusedBorder: UnderlineInputBorder(
//                              borderSide:
//                                  BorderSide(color: Colors.blueAccent))),
//                      obscureText: true,
//                    ),
//                    SizedBox(height: 5.0),
//                    Container(
//                      alignment: Alignment(1.0, 0.0),
//                      padding: EdgeInsets.only(top: 15.0, left: 20.0),
//                      child: InkWell(
//                        child: Text(
//                          'Forgot Password',
//                          style: TextStyle(
//                              color: Colors.blueAccent,
//                              fontWeight: FontWeight.bold,
//                              fontFamily: 'Montserrat',
//                              decoration: TextDecoration.underline),
//                        ),
//                      ),
//                    ),
//                    SizedBox(height: 40.0),
//                    Container(
//                      height: 40.0,
//                      child: Material(
//                        borderRadius: BorderRadius.circular(20.0),
//                        shadowColor: Colors.lightBlueAccent,
//                        color: Colors.blueAccent,
//                        elevation: 7.0,
//                        child: GestureDetector(
//                          onTap: () {
//                            Navigator.push(
//                                context,
//                                MaterialPageRoute(
//                                    builder: (context) => SecondPage()));
//                          },
//                          child: Center(
//                            child: Text(
//                              'LOGIN',
//                              style: TextStyle(
//                                  color: Colors.white,
//                                  fontWeight: FontWeight.bold,
//                                  fontFamily: 'Montserrat'),
//                            ),
//                          ),
//                        ),
//                      ),
//                    ),
//                    SizedBox(height: 20.0),
//                    Container(
//                      height: 40.0,
//                      color: Colors.transparent,
//                      child: Container(
//                        decoration: BoxDecoration(
//                            border: Border.all(
//                                color: Colors.black,
//                                style: BorderStyle.solid,
//                                width: 1.0),
//                            color: Colors.transparent,
//                            borderRadius: BorderRadius.circular(20.0)),
//                        child: Row(
//                          mainAxisAlignment: MainAxisAlignment.center,
//                          children: <Widget>[
//                            Center(
//                              child:
//                                  ImageIcon(AssetImage('assets/facebook.png')),
//                            ),
//                            SizedBox(width: 10.0),
//                            Center(
//                              child: Text('Log in with facebook',
//                                  style: TextStyle(
//                                      fontWeight: FontWeight.bold,
//                                      fontFamily: 'Montserrat')),
//                            )
//                          ],
//                        ),
//                      ),
//                    )
//                  ],
//                )),
//            SizedBox(height: 15.0),
//            Row(
//              mainAxisAlignment: MainAxisAlignment.center,
//              children: <Widget>[
//                Text(
//                  'New to Spotify ?',
//                  style: TextStyle(fontFamily: 'Montserrat'),
//                ),
//                SizedBox(width: 5.0),
//                InkWell(
//                  onTap: () {
//                    Navigator.of(context).pushNamed('/signup');
//                  },
//                  child: Text(
//                    'Register',
//                    style: TextStyle(
//                        color: Colors.blueAccent,
//                        fontFamily: 'Montserrat',
//                        fontWeight: FontWeight.bold,
//                        decoration: TextDecoration.underline),
//                  ),
//                )
//              ],
//            )
//          ],
//        ));
//  }
//}

class _LoginPageState extends State<LoginPage> {
  //Field
  String user, password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        child: Center(
          child: ListView(
            // แก้แถบสีเหลือง ให้สกอหน้าจอได้
            children: <Widget>[
              Column(
                children: <Widget>[
                  ONForm(),
                  MyStyle().mySizebox(),
                  userForm(),
                  MyStyle().mySizebox(),
                  passwordForm(),
                  Forgot(),
                  MyStyle().mySizebox(),
                  loginButton(),
                  FaceLog(),
                  register(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget loginButton() => Container(
        child: RaisedButton(
          color: Colors.white,
          onPressed: () {
            if (user == null ||
                user.isEmpty ||
                password == null ||
                password.isEmpty) {
              normalDialog(context, 'มีช่องว่าง กรุณากรอกให้ครบ');
            } else {
              checkAuthen();
            }
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
//          SizedBox(height: 10.0),
              Container(
                height: 40.0,
                child: Material(
                  borderRadius: BorderRadius.circular(20.0),
                  shadowColor: Colors.lightBlueAccent,
                  color: Colors.blueAccent,
                  elevation: 7.0,
                  child: GestureDetector(
                    child: Center(
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat'),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );

  Widget register() => Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'New to Spotify ?',
                  style: TextStyle(fontFamily: 'Montserrat'),
                ),
                SizedBox(width: 5.0),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('/signup');
                  },
                  child: Text(
                    'Register',
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                  ),
                )
              ],
            )
          ],
        ),
      );

  Future<Null> checkAuthen() async {
    String url =
        'http://10.0.2.2/thaisila/getUserWhereUser.php?isAdd=true&User=$user';
    try {
      Response response = await Dio().get(url);
      print('res = $response');

      var result = json.decode(response
          .data); // แปลงรหัสจากชื่อที่เป็นภาษาไทยไม่ให้เป็นภาษาต่างด้าว จาก \u0e2a\u0e21\u0e1b\u0e2d\u0e07 ให้เป็นภาษาไทย
      print('result = $result');
      for (var map in result) {
        UserModel userModel = UserModel.fromJson(map);
        if (password == userModel.password) {
          MaterialPageRoute route = MaterialPageRoute(
            builder: (context) => SecondPage(),
          );
          Navigator.pushAndRemoveUntil(context, route, (route) => false);
        } else {
          normalDialog(context, 'รหัสผ่านไม่ถูกต้อง กรุณาลองใหม่');
        }
      }
    } catch (e) {
      print(e);
    }
  }

  Widget userForm() => Container(
        width: 380.0,
        child: TextField(
          onChanged: (value) => user = value.trim(),
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.account_box,
              color: MyStyle().darkColor,
            ),
            labelText: 'User',
            labelStyle: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
                color: Colors.grey),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent)),
          ),
        ),
      );

  Widget passwordForm() => Container(
        width: 380.0,
        child: TextField(
          onChanged: (value) => password = value.trim(),
          obscureText: true, // ทำให้ password เป็น star
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.lock,
              color: MyStyle().darkColor,
            ),
            labelText: 'Password',
            labelStyle: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
                color: Colors.grey),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent)),
          ),
        ),
      );
}

Widget ONForm() => Container(
      child: Container(
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(0.0, 110.0, 0.0, 0.0),
              child: Text('Welcome to',
                  style:
                      TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold)),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(16.0, 175.0, 0.0, 0.0),
              child: Text('Thai Sign Language for Studying',
                  style:
                      TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(270.0, 200.0, 0.0, 0.0),
              child: Text('ThaiSiLa',
                  style: TextStyle(
                      fontSize: 10.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent)),
            )
          ],
        ),
      ),
    );

Widget Forgot() => Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 5.0),
          Container(
            alignment: Alignment(1.0, 0.0),
            padding: EdgeInsets.only(top: 15.0, left: 20.0),
            child: InkWell(
              child: Text(
                'Forgot Password',
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
                    decoration: TextDecoration.underline),
              ),
            ),
          ),
        ],
      ),
    );

Widget FaceLog() => Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 20.0),
          Container(
            height: 40.0,
            color: Colors.transparent,
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black,
                      style: BorderStyle.solid,
                      width: 1.0),
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20.0)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: ImageIcon(AssetImage('assets/facebook.png')),
                  ),
                  SizedBox(width: 10.0),
                  Center(
                    child: Text('Log in with facebook',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat')),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
