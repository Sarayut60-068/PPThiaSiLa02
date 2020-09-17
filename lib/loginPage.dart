import 'package:flutter/material.dart';
import 'package:thaisila02/ai.dart';
import 'package:thaisila02/chewie_list_item.dart';
import 'package:thaisila02/heart.dart';
import 'package:thaisila02/study.dart';
import 'package:thaisila02/contact.dart';
import 'package:thaisila02/setting.dart';
import 'user.dart';
import 'home.dart';
import 'study.dart';
import 'heart.dart';
import 'ai.dart';
import 'setup.dart';
import 'video.dart';

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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SecondPage()));
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
//        Container(
//          height: 150,
//          color: Colors.green,
//          child: ListView(
//            scrollDirection: Axis.horizontal,
//            children: <Widget>[
//              Row(
//                children: <Widget>[
//                  Image.asset("assets/images/02.JPG"),
//                  Image.asset("assets/images/03.JPG"),
//                  Image.asset("assets/images/04.JPG"),
//                  Image.asset("assets/images/05.JPG"),
//                  Image.asset("assets/images/06.JPG"),
//                  Image.asset("assets/images/07.JPG"),
//                  Image.asset("assets/images/08.JPG"),
//                  Image.asset("assets/images/05.JPG"),
//                ],
//              )
//            ],
//          ),
//        ),
//        Container(
//          height: 250,
//          color: Colors.white70,
//          child: Column(
//            crossAxisAlignment: CrossAxisAlignment.center,
//            children: <Widget>[
//              Text(
//                "Welcome to ThaiSiLa",
//                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.red),
//              ),
//              Text(" Thai sign language for studying (ThaiSiLa)",
//                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.pinkAccent),),
//              Text(""),
//              Text("ThaiSiLa คือ แอปพลิเคชันภาษามือไทยสำหรับโทรศัพท์มือถือ โดยมีภาพเคลื่อนไหว สอนการสื่อสารท่าทางภาษามือรวมถึงคำบรรยายเพื่อสะดวกต่อการเรียนรู้และใช้งานมากยิ่งขึ้น"),
//              Text(""),
//              Text("ภาษามือไทย  คือภาษามือทางการของประเทศไทย และใช้เป็นอย่างมากในประเทศไทย เทียบเป็น 20% ใน 56,000 คนหูหนวกก่อนรู้ภาษาที่ได้ไปที่โรงเรียน ภาษามือไทยได้ชื่อว่าเป็น (ภาษาทางการของประเทศไทยสำหรับคนหูหนวก) ในสิงหาคม พ.ศ. 2542 ในการลงนามโดยรัฐมนตรีว่าการกระทรวงศึกษาธิการในนามของรัฐบาลไทย"),
//              ],
//          ),
//        ),
////        Container(
////          height: 250,
////          color: Colors.amber,
////        ),
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
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search), onPressed: () {
              showSearch(context: context, delegate: DataSearch());
            })
          ],
        ),


        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('Sarayut Rattanachot'),
                accountEmail: Text('s6035512068@phuket.psu.ac.th'),
                currentAccountPicture: GestureDetector(
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://scontent.fbkk5-6.fna.fbcdn.net/v/t1.0-9/75550501_2495230860553086_3725527281922211840_o.jpg?_nc_cat=101&_nc_sid=0be424&_nc_eui2=AeHavvWDPNtalcv3ftMKcparj3k5M5cnaNWPeTkzlydo1Y_SWkDNm8yIz4IM1cvkMSIMp1PSf3tvlbzqAnayfNEw&_nc_ohc=nHQ4MbVHAj0AX8W31FJ&_nc_ht=scontent.fbkk5-6.fna&oh=37983ee65a11161f74d176203b5ac042&oe=5EB2B820"),
                  ),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://www.shutterstock.com/th/blog/wp-content/uploads/sites/16/2018/09/21.jpg?w=750"),
                  ),
                ),
              ),
              ListTile(
                title: Text('ตั้งค่า'),
                trailing: Icon(Icons.arrow_forward),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext) => Setting("Setting"))),
              ),
              //Divider(),
              ListTile(
                title: Text('ติดต่อ'),
                trailing: Icon(Icons.arrow_forward),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext) => Contact("ติดต่อฉัน"))),
              ),
              //Divider(),
            ],
          ),
        ),
        body: Container(
//            width: 200.0,
//            height: 200.0,
//            child: new Image.asset('assets/images/logo.png'),

          child: ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              new Column(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => study()));
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        border: Border.all(width: 1.0, color: Colors.blue),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Text(
                        'สื่อการสอนโดยใช้ภาพ',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => video()));
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        border: Border.all(width: 1.0, color: Colors.blue),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Text(
                        'สื่อการสอนโดยใช้ VDO',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ai()));
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        border: Border.all(width: 1.0, color: Colors.blue),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Text(
                        'เกม หรือ บททดสอบ',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => home()));
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        border: Border.all(width: 1.0, color: Colors.blue),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Text(
                        'คะแนน',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),

//          child: Column(
//            mainAxisAlignment: MainAxisAlignment.spaceBetween,
//            children: <Widget>[
//              studySection,
//              Container(
//                color: Colors.blue,
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                  children: <Widget>[
//                  Container( margin: EdgeInsets.all(10),child:Column(children: <Widget>[ IconButton(
//                    icon: Icon(
//                      Icons.book,
//                      size: 50,
//                    ),
//                    onPressed: () {
//                      Navigator.push(context,
//                          MaterialPageRoute(builder: (context) => study()));
//                    }
//                    ),],)),
//                    Container(
//                        margin: EdgeInsets.all(10),
//                        child: Column(
//                          children: <Widget>[
//                            IconButton(
//                                icon: Icon(
//                                  Icons.gps_fixed,
//                                  size: 50,
//                                ),
//                                onPressed: () {
//                                  Navigator.push(
//                                      context,
//                                      MaterialPageRoute(
//                                          builder: (context) => setup()));
//                                }),
//                          ],
//                        )),
//                    Container(
//                        margin: EdgeInsets.all(10),
//                        child: Column(
//                          children: <Widget>[
//                            IconButton(
//                                icon: Icon(
//                                  Icons.favorite,
//                                  size: 50,
//                                ),
//                                onPressed: () {
//                                  Navigator.push(
//                                      context,
//                                      MaterialPageRoute(
//                                          builder: (context) => heart()));
//                                }),
//                          ],
//                        )),
//                    Container(
//                        margin: EdgeInsets.all(10),
//                        child: Column(
//                          children: <Widget>[
//                            IconButton(
//                                icon: Icon(
//                                  Icons.camera_alt,
//                                  size: 50,
//                                ),
//                                onPressed: () {
//                                  Navigator.push(
//                                      context,
//                                      MaterialPageRoute(
//                                          builder: (context) => ai()));
//                                }),
//                          ],
//                        )),
//                    Container(
//                        margin: EdgeInsets.all(10),
//                        child: Column(
//                          children: <Widget>[
//                            IconButton(
//                                icon: Icon(
//                                  Icons.person,
//                                  size: 50,
//                                ),
//                                onPressed: () {
//                                  Navigator.push(
//                                      context,
//                                      MaterialPageRoute(
//                                          builder: (context) => home()));
//                                }),
//                          ],
//                        )),
//                  ],
//                ),
//              )
//            ],
//          ),
        ),
      ),
    );
  }
}

class DataSearch extends SearchDelegate<String> {

  final cities =[
    "ham",
    "sarayut",
    "rattanachot",
    "black",
    "PSU",
    "CoE",
    "gradeA",
    "no'tE",
  ];
  final recentCities =[
    "black",
    "PSU",
    "gradeA",
    "no'tE",
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    // กิจกรรมที่แอพบา
    return[
      IconButton(icon: Icon(Icons.clear),
          onPressed: () {
            query = "";
          })];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return Center(
      child: Container(
        height: 100.0,
        width: 100.0,
        child: Card(
          color: Colors.pinkAccent,
          child: Center(
            child: Text(query),
          ),
        ),
      ),
    );

  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    final suggestionList = query.isNotEmpty?recentCities
        :cities.where((p) => p.startsWith(query)).toList();

    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: (){
          showResults(context);
        },
        leading: Icon(Icons.access_time),
        title: RichText(
          text: TextSpan(
              text: suggestionList[index].substring(0, query.length),
              style: TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold),
              children: [TextSpan(
                  text: suggestionList[index].substring(query.length),
                  style: TextStyle(color: Colors.green))
              ]
          ),
        ),
      ),
      itemCount: suggestionList.length,
    );
  }
}
