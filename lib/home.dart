//import 'package:flutter/material.dart';
//import 'package:thaisila02/contact.dart';
//import 'package:thaisila02/setting.dart';
//import 'loginPage.dart';
//import 'home.dart';
//import 'package:firebase_auth/firebase_auth.dart';
//
//
//class home extends StatelessWidget{
//
////  @override
////  _HomeState createState() => _HomeState();
////}
////
////class _HomeState extends State<Home>{
////  String login = '...';
////  Widget currentWidget = showListproguct();
////
////  @override
////  void inrtState() {
////    super.initState();
////    findDisplayName();
////  }
////
////  Future<void> findDisplayName() async {
////    FirebaseAuth firebaseAuth = FirebaseAuth.instance;
////    setState(() {
////      login = firebaseUser.displayName;
////    });
////    print('login = $login');
////  }
////
////  Widget showLogin() {
////    return Text(
////      'Login by $login',
////      style: TextStyle(color: Colors.white),
////    );
////  }
//
//  @override
//  Widget build(BuildContext context) {
//     // TODO: implement build
//    return MaterialApp(
//      title: 'Profile',
//      home: Scaffold(
//        appBar: AppBar(
//          title: Text('Welcome to Profile'),
//          backgroundColor: Colors.deepOrangeAccent,
//        ),
//        floatingActionButton: FloatingActionButton(
//          onPressed: () {
//            Navigator.push(context,
//                MaterialPageRoute(builder: (context) => SecondPage()));
//          },
//          child: Icon(Icons.home),
//          backgroundColor: Colors.deepOrangeAccent,
//        ),
//        drawer: Drawer(
//          child: ListView(
//            children: <Widget>[
//              UserAccountsDrawerHeader(
//                accountName: Text('Sarayut Rattanachot'),
//                accountEmail: Text('s6035512068@phuket.psu.ac.th'),
//                currentAccountPicture: GestureDetector(
//                  child: CircleAvatar(
//                    backgroundImage: NetworkImage("https://scontent.fbkk5-6.fna.fbcdn.net/v/t1.0-9/75550501_2495230860553086_3725527281922211840_o.jpg?_nc_cat=101&_nc_sid=0be424&_nc_eui2=AeHavvWDPNtalcv3ftMKcparj3k5M5cnaNWPeTkzlydo1Y_SWkDNm8yIz4IM1cvkMSIMp1PSf3tvlbzqAnayfNEw&_nc_ohc=nHQ4MbVHAj0AX8W31FJ&_nc_ht=scontent.fbkk5-6.fna&oh=37983ee65a11161f74d176203b5ac042&oe=5EB2B820"),
//                  ),
//                ),
//
//                decoration: BoxDecoration(
//                  image: DecorationImage(
//                    fit: BoxFit.cover,
//                    image: NetworkImage("https://www.shutterstock.com/th/blog/wp-content/uploads/sites/16/2018/09/21.jpg?w=750"),
//                  ),
//                ),
//              ),
//              ListTile(
//                title: Text('ตั้งค่า'),
//                trailing: Icon(Icons.arrow_forward),
//                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext) => Setting("Setting"))),
//              ),
//             //Divider(),
//              ListTile(
//                title: Text('ติดต่อ'),
//                trailing: Icon(Icons.arrow_forward),
//                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext) => Contact("ติดต่อฉัน"))),
//              ),
//              //Divider(),
//            ],
//
//          ),
//        ),
//        body: Container(color: Colors.amberAccent),
//      ),
//    );
//  }
//}


import 'package:flutter/material.dart';
import 'package:thaisila02/loginPage.dart';


class homeThaiSila extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SecondPage()));
          },
          child: Icon(Icons.home),
          backgroundColor: Colors.deepOrangeAccent,
        ),
      body: Column(
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.blueAccent, Colors.lightBlueAccent]
                  )
              ),
              child: Container(
                width: double.infinity,
                height: 220.0,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/BackGround%2Ficon.png?alt=media&token=ce4ca12e-f874-4c90-96bf-aaf5276fb2d6",
                        ),
                        radius: 70.0,
                      ),
//                      SizedBox(
//                        height: 10.0,
//                      ),
                      Text(
                        "Thai Sign language for Studying",
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.white,
                        ),
                      ),
//                      SizedBox(
//                        height: 10.0,
//                      ),

                    ],
                  ),
                ),
              )
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0,horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "แนะนำตัวฉัน:",
                    style: TextStyle(
                        color: Colors.redAccent,
                        fontStyle: FontStyle.normal,
                        fontSize: 16.0
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text('สวัสดี ฉันคือ Thai Sign language for Studying หรือเรียกสั้นๆว่า ThaiSiLa ก็ได้ ฉันคือสิ่งที่จะคุณในการเรียนรู้เกี่ยวกับภาษามือไทยกัน\n'
                      'อย่างแรก ไอคอนเรียนกับการเรียน จะเป็นสื่อรูปภาพและวีดีโอในภาษามือไทยที่แบ่งตามหมวดหมู่ ขึ้นอยู่กับว่าคุณสนใจคำไหน \n'
                    'อย่างที่สอง ไอคอนเแบบทดสอบ จะเป็นการวัดความรู้ในสิ่งที่คุณรู้หรือเรียนมาซึ่งจะแบ่งเป็นแบบตอบคำถามหรือจะเป็นเกมจับคู่ก็แล้วคุณจะสนใจ \n'
                      'อย่งที่สาม ไอคอนคะแนน เราจะส่วนในการบันทึกคะแนนของคุณ หรือคุณจะบันทึกอะไรก็ได้ที่เป็นในลักลักษณะของข้อความ \n'
                      'อย่งที่สี่ คือตัวฉันที่คุณกำลังอ่าน ขอให้สนุกกับการเรียนรู้ภาษามือไทยละ อ้อ ยังมีไอคอนค้นหาอยู่นะ ถ้าคุณอยากรู้คำไหนก็สามารถค้นหาคำนั้นได้เลย โชคดีนะ \n'
                      'ขอขอบคุณแหล่งที่มา หนังสือเอกลักษณ์คำใต้ ทักทายด้วยภาษามือ \n',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                      letterSpacing: 2.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
//          SizedBox(
//            height: 20.0,
//          ),
//          Container(
//            width: 170.00,
//            child: RaisedButton(
//                onPressed: () {},
//                shape: RoundedRectangleBorder(
//                    borderRadius: BorderRadius.circular(80.0)
//                ),
//                elevation: 0.0,
//                padding: EdgeInsets.all(0.0),
//                child: Ink(
//                  decoration: BoxDecoration(
//                    gradient: LinearGradient(
//                        begin: Alignment.centerRight,
//                        end: Alignment.centerLeft,
//                        colors: [Colors.redAccent,Colors.pinkAccent]
//                    ),
//                    borderRadius: BorderRadius.circular(10.0),
//                  ),
//                  child: Container(
//                    constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
//                    alignment: Alignment.center,
//                    child: Text("Contact me",
//                      style: TextStyle(color: Colors.white, fontSize: 26.0, fontWeight:FontWeight.w300),
//                    ),
//                  ),
//                )
//            ),
//          ),
        ],
      ),
    );
  }
}

