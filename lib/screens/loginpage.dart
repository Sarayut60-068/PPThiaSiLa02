import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
@override
_LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage > {

  String _email;
  String _password;

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), //กำหนดขนาดกล่อง
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //กำหนดตำแหน่งที่ว่างของกล่อง
          children: [
           TextField(
             onChanged: (value) {
               _email = value;
             },
              decoration: InputDecoration(
                  hintText: "Enter E-mail.."
              ),
            ),
//            TextField(
//              onChanged: (value) {
//                _password = value;
//              },
//             decoration: InputDecoration(
//                  hintText: "Enter Password..",
//              ),
//            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  TextField(
                    onChanged: (value) {
                      _password = value;
                    },
                  decoration: InputDecoration(
                    hintText: "Enter a password of at least 6 characters.",

                ),
              ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center, //กำหนดตำแหน่งที่ว่างของกล่อง
              children: [
                MaterialButton(
                  onPressed: _login,
                  child: Text("Login"),
                ),
                MaterialButton(
                  onPressed: _createUser,
                  child: Text("Create New Account..."),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
