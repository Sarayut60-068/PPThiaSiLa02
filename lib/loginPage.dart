import 'package:flutter/material.dart';
import 'package:thaisila02/ai.dart';
import 'package:thaisila02/main.dart';
import 'package:thaisila02/study.dart';
import 'package:thaisila02/contact.dart';
import 'package:thaisila02/setting.dart';
import 'package:thaisila02/vocabulary/hadevocabulary.dart';
import 'user.dart';
import 'home.dart';
import 'study.dart';
import 'ai.dart';
import 'video.dart';
import 'constants.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
//        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0, // ขอบแอพบาร์หายไปหรือจาฃลฃดีกว่า
          backgroundColor: Color(0xFF64B5F6),
//          title: Text("Home"),
          actions: <Widget>[
            Builder(
                builder: (context) => IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () async {
                  showSearch(context: context, delegate: DataSearch());
                    }
    )
            )

//            Builder(
//              builder: (context) => IconButton(
//                icon: Icon(Icons.search),
//                onPressed: () async {
////                  showSearch(context: context, delegate: DataSearch());
//                  final Article result = await showSearch(
//                      context: context,
//                      delegate: ArticleSearch(widget.bloc.articles)
//                  );
//                  Scaffold.of(context)
//                      .showSnackBar(SnackBar(content: Text(result.title)));
////                  if (await canLaunch(result.url)) {
////                    launch(result.url);
////                  }
//                }))
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
                        "https://scontent.fbkk14-1.fna.fbcdn.net/v/t1.0-9/117391812_3267808156645768_8112608958050632131_o.jpg?_nc_cat=111&ccb=2&_nc_sid=09cbfe&_nc_ohc=2eVlnf41qAYAX8Td_IH&_nc_ht=scontent.fbkk14-1.fna&oh=9e64026d2b5efe5e89b384907c86ca89&oe=5FE1C267"),
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
              onTap: () async {
                  await FirebaseAuth.instance.signOut();
              },
              ),
              //Divider(),
            ],
          ),
        ),



        body: Container(
            child: Body(),
//          child: ButtonBar(
//
//              new Column(
//                children: <Widget>[
//                  GestureDetector(
//                    onTap: () {
//                      Navigator.push(context,
//                          MaterialPageRoute(builder: (context) => study()));
//                    },
//                    child: Container(
//                      margin: EdgeInsets.all(10),
//                      padding: EdgeInsets.all(20.0),
//                      decoration: BoxDecoration(
//                        border: Border.all(width: 1.0, color: Colors.blue),
//                        borderRadius: BorderRadius.circular(10.0),
//                      ),
//                      child: Text(
//                        'สื่อการสอนโดยใช้ภาพ',
//                        style: TextStyle(color: Colors.blue),
//                      ),
//                    ),
//                  ),
//
//                  GestureDetector(
//                    onTap: () {
//                      Navigator.push(context,
//                          MaterialPageRoute(builder: (context) => video()));
//                    },
//                    child: Container(
//                      margin: EdgeInsets.all(10),
//                      padding: EdgeInsets.all(20.0),
//                      decoration: BoxDecoration(
//                        border: Border.all(width: 1.0, color: Colors.blue),
//                        borderRadius: BorderRadius.circular(10.0),
//                      ),
//                      child: Text(
//                        'สื่อการสอนโดยใช้ VDO',
//                        style: TextStyle(color: Colors.blue),
//                      ),
//                    ),
//                  ),
//
//                  GestureDetector(
//                    onTap: () {
//                      Navigator.push(context,
//                          MaterialPageRoute(builder: (context) => ai()));
//                    },
//                    child: Container(
//                      margin: EdgeInsets.all(10),
//                      padding: EdgeInsets.all(20.0),
//                      decoration: BoxDecoration(
//                        border: Border.all(width: 1.0, color: Colors.blue),
//                        borderRadius: BorderRadius.circular(10.0),
//                      ),
//                      child: Text(
//                        'เกม หรือ บททดสอบ',
//                        style: TextStyle(color: Colors.blue),
//                      ),
//                    ),
//                  ),
//                  GestureDetector(
//                    onTap: () {
//                      Navigator.push(context,
//                          MaterialPageRoute(builder: (context) => home()));
//                    },
//                    child: Container(
//                      margin: EdgeInsets.all(10),
//                      padding: EdgeInsets.all(20.0),
//                      decoration: BoxDecoration(
//                        border: Border.all(width: 1.0, color: Colors.blue),
//                        borderRadius: BorderRadius.circular(10.0),
//                      ),
//                      child: Text(
//                        'คะแนน',
//                        style: TextStyle(color: Colors.blue),
//                      ),
//                    ),
//                  ),
//
//                  GestureDetector(
//                    onTap: () {},
//                    child: Container(
//                      child: new Image.asset(
//                        'assets/images/logo.png',
//                        width: 200.0,
//                        height: 200.0,
//                        fit: BoxFit.cover,
//                      ),
//                    ),
//                  ),
//                ],
//              ),
//            ],
//          ),




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

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provie us total height  and width of our screen
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "สื่อการสอน", press: () {}),
          RecomendsPlants(),
          TitleWithMoreBtn(title: "เกม หรือ แบบทดสอบ", press: () {}),
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}

//class ArticleSearch extends SearchDelegate<Article>{
//  final Stream<UnmodifiableListView<Article>>articles;
//
//  ArticleSearch(this.articles);
//
//  @override
//  List<Widget> buildActions(BuildContext context) {
//    // กิจกรรมที่แอพบา
//    return [
//      IconButton(
//          icon: Icon(Icons.clear),
//          onPressed: () {
//            query = "";
//          })
//    ];
//  }
//
//  @override
//  Widget buildLeading(BuildContext context) {
//    // TODO: implement buildLeading
//    return IconButton(
//        icon: AnimatedIcon(
//          icon: AnimatedIcons.menu_arrow,
//          progress: transitionAnimation,
//        ),
//        onPressed: () {
//          close(context, null);
//        });
//  }
//
//  @override
//  Widget buildResults(BuildContext context) {
//    return StreamBuider<UnmodifiableListView<Article>>(
//      stream: articles,
//      builder: (context, AsyncSnapshot<UnmodifiableListView<Article>> snapshot){
//        if (!snapshot.hasData) {
//          return Center(
//              child: Text('No Data!',)
//          );
//        }
//
//        final results = snapshot.data.where((a) => a.title.toLowerCase().contains(query));
//
//        return ListView(
//          children: results.map<ListTile>((a) => ListTile(
//            title: Text(a.title,
//                style: Theme
//                    .of(context)
//                    .textTheme
//                    .subhead
//                    .copyWith(fontSize: 15.0)),
//            leading: Icon(Icons.access_time),
//            onTap: () {
//              close(context, a);
//            },
//          ))
//              .toList(),
//        );
//
//      },
//    );
//  }
//  }
//
//  @override
//  Widget buildSuggestions(BuildContext context) {
//    return StreamBuider<UnmodifiableListView<Article>>(
//      stream: articles,
//      builder: (context, AsyncSnapshot<UnmodifiableListView<Article>> snapshot){
//        if (!snapshot.hasData) {
//          return Center(
//            child: Text('No Data!',)
//          );
//        }
//
//        final results = snapshot.data.where((a) => a.title.toLowerCase().contains(query));
//
//        return ListView(
//          children: results.map<ListTile>((a) => ListTile(
//            title: Text(a.title,
//                style: Theme
//                    .of(context)
//                    .textTheme
//                    .subhead
//                    .copyWith(fontSize: 15.0, color: Colors.cyan)),
//            leading: Icon(Icons.access_time),
//            onTap: () {
//              close(context, a);
//            },
//          ))
//              .toList(),
//        );
//
//    },
//    );
//   }
//}


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

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding * 2.5),
      // It will cover 20% of our total height
      height: size.height * 0.2,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
              bottom: 30 + kDefaultPadding,
            ),
            height: size.height * 1.5 - 27,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Row(
              children: <Widget>[
                Text(
                  'Hi, good luck!',
                  style: Theme.of(context).textTheme.headline5.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Image.asset("assets/images/logo.png")
              ],
            ),
          ),

        ],
      ),
    );
  }
}


class RecomendsPlants extends StatelessWidget {
  const RecomendsPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          RecomendPlantCard(
            image: "assets/potaFree/stu.png",
            title: "สื่อการสอน",
            country: "Teaching materials",
//            price: 440,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => study(),
                ),
              );
            },
          ),
          RecomendPlantCard(
            image: "assets/potaFree/setan.png",
            title: "ประโยค",
            country: "Sentence",
//            price: 440,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => video(),
                ),
              );
            },
          ),
//          RecomendPlantCard(
//            image: "assets/images/3.JPG",
//            title: "Angelica",
//            country: "Russia",
////            price: 440,
//            press: () {
//              Navigator.push(
//                context,
//                MaterialPageRoute(
//                  builder: (context) => study(),
//                ),
//              );
//            },
//          ),
        ],
      ),
    );
  }
}

class RecomendPlantCard extends StatelessWidget {
  const RecomendPlantCard({
    Key key,
    this.image,
    this.title,
    this.country,
//    this.price,
    this.press,
  }) : super(key: key);

  final String image, title, country;
//  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.5,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "$title\n".toUpperCase(),
                            style: Theme.of(context).textTheme.button),
                        TextSpan(
                          text: "$country".toUpperCase(),
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({
    Key key,
    this.title,
    this.press,
  }) : super(key: key);
  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: <Widget>[
          TitleWithCustomUnderline(text: title),
          Spacer(),
          FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: kPrimaryColor,
            onPressed: press,
            child: Text(
              "More",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({
    Key key,
    this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              text,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(right: kDefaultPadding / 4),
              height: 7,
              color: kPrimaryColor.withOpacity(0.2),
            ),
          )
        ],
      ),
    );
  }
}

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          FeaturePlantCard(
            image: "assets/potaFree/garm.jpg",
            press: () {},
          ),
          FeaturePlantCard(
            image: "assets/potaFree/kanaa.jpg",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class FeaturePlantCard extends StatelessWidget {
  const FeaturePlantCard({
    Key key,
    this.image,
    this.press,
  }) : super(key: key);
  final String image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding / 2,
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
