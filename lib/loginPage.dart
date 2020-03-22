import 'package:flutter/material.dart';
import 'user.dart';
import 'home.dart';

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
                )),
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
    color: Colors.pink,
  ),
);

class BarSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
      color: Colors.green,
    )
            /*child: Row(
                  children: <Widget>[
                    IconButton(
                        icon: Icon(Icons.home,size: 10,),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => home()));
                        }),
                    Icon(
                      Icons.home,
                      size: 10,
                    ),
                    Icon(
                      Icons.book,
                      size: 10,
                    ),
                    Icon(Icons.favorite, size: 10),
                    Icon(
                      Icons.camera_alt,
                      size: 10,
                    )
                  ],
                )*/
            ));
  }
}

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
              color: Colors.green,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container( margin: EdgeInsets.all(10),child:Column(children: <Widget>[ IconButton(
                    icon: Icon(
                      Icons.home,
                      size: 50,
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => home()));
                    }),],)),
          Container( margin: EdgeInsets.all(10),child:Column(children: <Widget>[ IconButton(
                    icon: Icon(
                      Icons.book,
                      size: 50,
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => home()));
                    }),],)),
                  Container( margin: EdgeInsets.all(10),child:Column(children: <Widget>[ IconButton(
                      icon: Icon(
                        Icons.favorite,
                        size: 50,
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => home()));
                      }),],)),
                  Container( margin: EdgeInsets.all(10),child:Column(children: <Widget>[ IconButton(
                      icon: Icon(
                        Icons.camera_alt,
                        size: 50,
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => home()));
                      }),],)),
                  Container( margin: EdgeInsets.all(10),child:Column(children: <Widget>[ IconButton(
                      icon: Icon(
                        Icons.settings,
                        size: 50,
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => home()));
                      }),],)),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
