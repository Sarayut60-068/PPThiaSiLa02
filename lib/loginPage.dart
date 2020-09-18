import 'package:flutter/material.dart';
import 'package:thaisila02/ai.dart';
import 'package:thaisila02/main.dart';
import 'package:thaisila02/study.dart';
import 'package:thaisila02/contact.dart';
import 'package:thaisila02/setting.dart';
import 'user.dart';
import 'home.dart';
import 'study.dart';
import 'ai.dart';
import 'video.dart';


class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
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
              ListTile(
                title: Text('Log out'),
                trailing: Icon(Icons.exit_to_app),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LoginPage()));
                  },
              ),
              //Divider(),
            ],
          ),
        ),
        body: Container(
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
                  GestureDetector(
                    onTap: () {},
                    child: Container(
//                      margin: EdgeInsets.all(10),
//                      padding: EdgeInsets.all(20.0),
//                      decoration: BoxDecoration(
//                        border: Border.all(width: 1.0, color: Colors.blue),
//                        borderRadius: BorderRadius.circular(10.0),
//                      ),
                      child: new Image.asset(
                        'assets/images/logo.png',
                        width: 200.0,
                        height: 200.0,
                        fit: BoxFit.cover,
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
  final cities = [
    "ham",
    "sarayut",
    "rattanachot",
    "black",
    "PSU",
    "CoE",
    "gradeA",
    "no'tE",
  ];
  final recentCities = [
    "black",
    "PSU",
    "gradeA",
    "no'tE",
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    // กิจกรรมที่แอพบา
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = "";
          })
    ];
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
    final suggestionList = query.isNotEmpty
        ? recentCities
        : cities.where((p) => p.startsWith(query)).toList();

    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          showResults(context);
        },
        leading: Icon(Icons.access_time),
        title: RichText(
          text: TextSpan(
              text: suggestionList[index].substring(0, query.length),
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                    text: suggestionList[index].substring(query.length),
                    style: TextStyle(color: Colors.green))
              ]),
        ),
      ),
      itemCount: suggestionList.length,
    );
  }
}
