import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import 'constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../googlepage.dart';
import 'package:thaisila02/googlepage.dart';

import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import 'package:thaisila02/loginPage.dart';

class LoginPage extends StatefulWidget {
@override
_LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage > {

//   String _email;
//   String _password;

//   Future<void> _createUser() async {
//     try {
//       print("Email: $_email Password: $_password"); //ตรวจสอบความผิดพลาดตอนรัน ดูในเทอมิอน
//       UserCredential userCredential = await FirebaseAuth
//           .instance
//           .createUserWithEmailAndPassword(email: _email, password: _password);
//       print("User: $userCredential");
//     }on FirebaseAuthException catch (e) {
//       print("Error: $e");
//     } catch (e) {
//       print("Error: $e");
//     }
//   }

//   Future<void> _login() async {
//     try {
//       UserCredential userCredential = await FirebaseAuth
//           .instance
//           .signInWithEmailAndPassword(email: _email, password: _password);
//       print("User: $userCredential");
//     }on FirebaseAuthException catch (e) {
//       print("Error: $e");
//     } catch (e) {
//       print("Error: $e");
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       backgroundColor: Color(0xff99FFFF),
//       // appBar: AppBar(
//       //   title: Text("login"),
//       // ),
//       body: 
//       Padding( padding: const EdgeInsets.all(16.0), //กำหนดขนาดกล่อง
      
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center, //กำหนดตำแหน่งที่ว่างของกล่อง
//           children: [
//             Image.network(
//                       'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/BackGround%2Ficon.png?alt=media&token=ce4ca12e-f874-4c90-96bf-aaf5276fb2d6',
//                         width: 280.0,
//                     ),
//               Text(
//                     "Hello there, \nwelcome to ThaiSila",
//                     style: TextStyle(
//                       fontSize: 30,
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//            TextField(
//              onChanged: (value) {
//                _email = value;
//              },
//               decoration: InputDecoration(
//                   hintText: "Enter E-mail.."
//               ),
//             ),
// //            TextField(
// //              onChanged: (value) {
// //                _password = value;
// //              },
// //             decoration: InputDecoration(
// //                  hintText: "Enter Password..",
// //              ),
// //            ),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   TextField(
//                     onChanged: (value) {
//                       _password = value;
//                     },
//                   decoration: InputDecoration(
//                     hintText: "Enter a password of at least 6 characters.",

//                 ),
//               ),
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center, //กำหนดตำแหน่งที่ว่างของกล่อง
//               children: [                
//                 MaterialButton(
//                   onPressed: _login,
//                   child: Text("Login"),
//                 ),
//                 MaterialButton(
//                   onPressed: _createUser,
//                   child: Text("Create New Account..."),
//                 ),
//               ],
//             ),
//             Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                children: <Widget>[
//                  Center(
//                    child: ImageIcon(AssetImage('assets/facebook.png')),
//                  ),
//                  SizedBox(width: 10.0),
//                  Center(
//                    child: Text('Log in with facebook',
//                        style: TextStyle(
//                            fontWeight: FontWeight.bold,
//                            fontFamily: 'Montserrat')),
//                  )
//                ],
//                 ),
//           ],
//         ),
//       ),
//     );
//   }
String _email, _password;

  Future<void> _createUser() async {
    try {
      print("Email: $_email Password: $_password"); //ตรวจสอบความผิดพลาดตอนรัน ดูในเทอมิอน
      UserCredential userCredential = await FirebaseAuth
          .instance
          .createUserWithEmailAndPassword(email: _email, password: _password);
      print("User: $userCredential");
    }on FirebaseAuthException catch (e) {
      print("Error: $e");
    } catch (e) {
      print("Error: $e");
    }
  }

  Future<void> _login() async {
    try {
      UserCredential userCredential = await FirebaseAuth
          .instance
          .signInWithEmailAndPassword(email: _email, password: _password);
      print("User: $userCredential");
    }on FirebaseAuthException catch (e) {
      print("Error: $e");
    } catch (e) {
      print("Error: $e");
    }
  }

 
  Widget _buildLogo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 1),
          // child: Text(
          //   'ThaiSiLa',
          //   style: TextStyle(
          //     fontSize: MediaQuery.of(context).size.height / 25,
          //     fontWeight: FontWeight.bold,
          //     color: Colors.white,
          //   ),
          // ),
         child: Image.network(
                      'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/BackGround%2Ficon.png?alt=media&token=ce4ca12e-f874-4c90-96bf-aaf5276fb2d6',
                        width: 250,
                        height:  180,
                    ),
        ),
      ],
    );
  }

  Widget _buildEmailRow() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        onChanged: (value) {
          setState(() {
            _email = value;
          }
          );
        },
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.email,
              color: mainColor,
            ),
            labelText: 'E-mail'),
      ),
    );
  }

  Widget _buildPasswordRow() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        keyboardType: TextInputType.text,
        obscureText: true,
        onChanged: (value) {
          setState(() {
                      _password = value;
                     }
          );
        },
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.lock,
            color: mainColor,
          ),
          labelText: 'Password',
    ),
      ),
    );
  }

  Widget _buildForgetPasswordButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        FlatButton(
          onPressed: () {},
          child: Text("Forgot Password"),
        ),
      ],
    );
  }

  Widget _buildLoginButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 1.4 * (MediaQuery.of(context).size.height / 20),
          width: 5 * (MediaQuery.of(context).size.width / 10),
          margin: EdgeInsets.only(bottom: 5),
          child: RaisedButton(
            elevation: 1.0,
            color: mainColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            onPressed: _login,
            child: Text(
              "Login",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.5,
                fontSize: MediaQuery.of(context).size.height / 40,
              ),
            ),
          ),
          
        )
      ],
    );
  }
  Widget _buildLoginNewAccounButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 1.4 * (MediaQuery.of(context).size.height / 20),
          width: 5 * (MediaQuery.of(context).size.width / 10),
          margin: EdgeInsets.only(bottom: 20),
                    
          child: RaisedButton(
            elevation: 1.0,
            color: mainColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            onPressed: _createUser,
            child: Text(
              "New Account...",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 0.05,
                fontSize: MediaQuery.of(context).size.height / 40,
              ),
            ),
          ),
          
        )
      ],
    );
  }

  Widget _buildOrRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(bottom: 1),
          child: Text(
            '- OR -',
            style: TextStyle(
              fontWeight: FontWeight.w400,
            ),
          ),
        )
      ],
    );
  }

  Widget _buildSocialBtnRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
           onTap: () {
               Navigator.push(
                context,
                MaterialPageRoute(
                   builder: (context) =>  SignInDemo()) );
                       },
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: kGoogleColor,
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0, 2),
                    blurRadius: 6.0)
              ],
            ),
            child: Icon(
              FontAwesomeIcons.google,
              color: Colors.white,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              // color: kBackgroundColor,
              // boxShadow: [
              //   BoxShadow(
              //       color: Colors.black26,
              //       offset: Offset(0, 2),
              //       blurRadius: 6.0)
              // ],
            ),
            // child: Icon(
            //   FontAwesomeIcons.google,
            //   color: Colors.white,
            // ),
          ),
        ),
         GestureDetector(
          onTap: () {},
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: kFackbookeColor,
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0, 2),
                    blurRadius: 6.0)
              ],
            ),
            child: Icon(
              FontAwesomeIcons.facebook,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildContainer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.6,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Login",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height / 30,
                      ),
                    ),
                  ],
                ),
                _buildEmailRow(),
                _buildPasswordRow(),
                _buildForgetPasswordButton(),
                _buildLoginButton(),
                _buildLoginNewAccounButton(),
                _buildOrRow(),
                _buildSocialBtnRow(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSignUpBtn() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 40),
          child: FlatButton(
            onPressed: () {},
            child: RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: 'Dont have an account? ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: MediaQuery.of(context).size.height / 40,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextSpan(
                  text: 'Sign Up',
                  style: TextStyle(
                    color: mainColor,
                    fontSize: MediaQuery.of(context).size.height / 40,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ]),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Color(0xffb9f6ca),
        body: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width,
              child: Container(
                decoration: BoxDecoration(
                  color: mainColor,                  
                  borderRadius: BorderRadius.only(
                    bottomLeft: const Radius.circular(70),
                    bottomRight: const Radius.circular(70),
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildLogo(),
                _buildContainer(),
                // _buildSignUpBtn(),
              ],
            )
          ],
        ),
      ),
    );
  }
}



