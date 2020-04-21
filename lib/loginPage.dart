import 'package:flutter/material.dart';
import 'package:thaisila02/ai.dart';
import 'package:thaisila02/heart.dart';
import 'package:thaisila02/study.dart';
import 'user.dart';
import 'home.dart';
import 'study.dart';
import 'heart.dart';
import 'ai.dart';
import 'setup.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final User user = new User();

  @override
  Widget build(BuildContext context) {
    final TextField _txtUserName = new TextField(
      decoration: new InputDecoration(
        hintText: 'Username',
        contentPadding: new EdgeInsets.all(10.0),
        border: InputBorder.none,
      ),
      keyboardType: TextInputType.text,
      autocorrect: false,
      onChanged: (text) {
        setState(() {
          this.user.userNameString = text;
        });
      },
    );

    // final TextField _txtEmail = new TextField(
    //   decoration: new InputDecoration(
    //     hintText: 'Email',
    //     contentPadding: new EdgeInsets.all(10.0),
    //     border: InputBorder.none,
    //   ),
    //   keyboardType: TextInputType.text,
    //   autocorrect: false,
    //   onChanged: (text) {
    //     setState(() {
    //       this.user.emailString = text;
    //     });
    //   },
    // );

    // final TextField _txtPassword = new TextField(
    //   decoration: new InputDecoration(
    //     hintText: 'Password',
    //     contentPadding: new EdgeInsets.all(10.0),
    //     border: InputBorder.none,
    //   ),
    //   keyboardType: TextInputType.text,
    //   autocorrect: false,
    //   obscureText: true,
    //     onChanged: (text){
    //     setState(() {
    //       this.user.passwordString = text;
    //     });
    //     },
    // );

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Thai Lign Language for Studying"),
      ),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Container(
            width: 200.0,
            height: 200.0,
            child: new Image.asset('assets/images/logo.png'),
          ),
          new Container(
            margin: new EdgeInsets.only(
                left: 20.0, right: 20.0, bottom: 10.0, top: 20.0),
            decoration: new BoxDecoration(
                color: Color.fromARGB(255, 240, 240, 240),
                border: new Border.all(width: 1.2, color: Colors.black12),
                borderRadius:
                    const BorderRadius.all(const Radius.circular(25.0))),
            child: _txtUserName,
          ),
          // new Container(
          //   margin: new EdgeInsets.only(left: 20.0, right: 20.0),
          //   decoration: new BoxDecoration(
          //       color: Color.fromARGB(255, 240, 240, 240),
          //       border: new Border.all(width: 1.2, color: Colors.black12),
          //       borderRadius:
          //           const BorderRadius.all(const Radius.circular(25.0))),
          //   child: _txtEmail,
          // ),
          // new Container(
          //   margin: new EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
          //   decoration: new BoxDecoration(
          //       color: Color.fromARGB(255, 240, 240, 240),
          //       border: new Border.all(width: 1.2, color: Colors.black12),
          //       borderRadius:
          //           new BorderRadius.all(const Radius.circular(25.0))),
          //   child: _txtPassword,
          // ),
          new Container(
            margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
            child: new Row(
              children: <Widget>[
                new Expanded(
                    child: new RaisedButton(
                  child: new Text("Login"),
                  textColor: Colors.white,
                  color: Colors.blue,
                  onPressed: () {
                    print('userNameString ==> ${user.userNameString}');
                    // print('emailString ==> ${user.emailString}');
                    // print('passwordString ==> ${user.passwordString}');
                    //;
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SecondPage()));
                  },
                ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

var studySection = Expanded(
  child: Container(
    height: 500,
    color: Colors.greenAccent,
    child: ListView(
      children: <Widget>[
        Container(
          height: 90,
          color: Colors.lightBlueAccent,
          child: new Image.asset('assets/images/01.JPG'),
        ),
        Container(
          height: 150,
          color: Colors.green,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Image.asset("assets/images/02.JPG"),
                  Image.asset("assets/images/03.JPG"),
                  Image.asset("assets/images/04.JPG"),
                  Image.asset("assets/images/05.JPG"),
                  Image.asset("assets/images/06.JPG"),
                  Image.asset("assets/images/07.JPG"),
                  Image.asset("assets/images/08.JPG"),
                  Image.asset("assets/images/05.JPG"),
                ],
              )
            ],
          ),
        ),
        Container(
          height: 250,
          color: Colors.white70,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "Welcome to ThaiSiLa",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.red),
              ),
              Text(" Thai sign language for studying (ThaiSiLa)",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.pinkAccent),),
              Text(""),
              Text("ThaiSiLa คือ แอปพลิเคชันภาษามือไทยสำหรับโทรศัพท์มือถือ โดยมีภาพเคลื่อนไหว สอนการสื่อสารท่าทางภาษามือรวมถึงคำบรรยายเพื่อสะดวกต่อการเรียนรู้และใช้งานมากยิ่งขึ้น"),
              Text(""),
              Text("ภาษามือไทย  คือภาษามือทางการของประเทศไทย และใช้เป็นอย่างมากในประเทศไทย เทียบเป็น 20% ใน 56,000 คนหูหนวกก่อนรู้ภาษาที่ได้ไปที่โรงเรียน ภาษามือไทยได้ชื่อว่าเป็น (ภาษาทางการของประเทศไทยสำหรับคนหูหนวก) ในสิงหาคม พ.ศ. 2542 ในการลงนามโดยรัฐมนตรีว่าการกระทรวงศึกษาธิการในนามของรัฐบาลไทย"),
              ],
          ),
        ),
//        Container(
//          height: 250,
//          color: Colors.amber,
//        ),
      ],
    ),
  ),
);

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              studySection,
              Container(
                color: Colors.blue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                  Container( margin: EdgeInsets.all(10),child:Column(children: <Widget>[ IconButton(
                    icon: Icon(
                      Icons.ondemand_video,
                      size: 50,
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => home()));
                    }
                    ),],)),
                    Container(
                        margin: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            IconButton(
                                icon: Icon(
                                  Icons.book,
                                  size: 50,
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => study()));
                                }),
                          ],
                        )),
                    Container(
                        margin: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            IconButton(
                                icon: Icon(
                                  Icons.favorite,
                                  size: 50,
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => heart()));
                                }),
                          ],
                        )),
                    Container(
                        margin: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            IconButton(
                                icon: Icon(
                                  Icons.camera_alt,
                                  size: 50,
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ai()));
                                }),
                          ],
                        )),
                    Container(
                        margin: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            IconButton(
                                icon: Icon(
                                  Icons.settings,
                                  size: 50,
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => setup()));
                                }),
                          ],
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
