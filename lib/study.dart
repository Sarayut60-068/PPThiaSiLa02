import 'package:flutter/material.dart';
import 'package:thaisila02/studytPoto/A1.dart';
import 'package:thaisila02/studytPoto/B2.dart';
import 'package:thaisila02/studytPoto/C3.dart';
import 'package:thaisila02/studytPoto/D4.dart';
import 'package:thaisila02/studytPoto/E5.dart';
import 'package:thaisila02/studytPoto/F6.dart';
import 'package:thaisila02/studytPoto/G7.dart';
import 'package:thaisila02/studytPoto/H8.dart';
import 'package:thaisila02/studytPoto/I9.dart';
import 'package:thaisila02/studytPoto/J10.dart';
import 'constants.dart';
import 'loginPage.dart';
import 'home.dart';

class study extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Study',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Stady'),
          backgroundColor: Colors.green,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SecondPage()));
          },
          child: Icon(Icons.home),
          backgroundColor: Colors.green,
        ),
        body: SafeArea(
          child: ListView(
            children: <Widget>[
              RecomendsPlants(),
              RecomePlants(),
              RecomePlants2(),
              RecomePlants3(),
              RecomePlants4(),
              RecomePlants5(),
//              Container(
//                child: ButtonBar(
//                  alignment: MainAxisAlignment.center,
//                  children: <Widget>[
//                    RaisedButton(
//                      onPressed: () {
//                        Navigator.push(context,
//                            MaterialPageRoute(builder: (context) => A1()));
//                      },
//                      color: Colors.purple,
//                      child: Text(
//                        'สัญลักลักษณ์แทนการเคลื่อนไหว',
//                        style: TextStyle(color: Colors.white),
//                      ),
//                    ),
//                  ],
//                ),
//              ),
//              Container(
//                child: ButtonBar(
//                  alignment: MainAxisAlignment.center,
//                  children: <Widget>[
//                    RaisedButton(
//                      onPressed: () {
//                        Navigator.push(context,
//                            MaterialPageRoute(builder: (context) => B2()));
//                      },
//                      color: Colors.blue,
//                      child: Text(
//                        'เครื่องใช้ เครื่องแต่งกาย',
//                        style: TextStyle(color: Colors.white),
//                      ),
//                    ),
//                  ],
//                ),
//              ),
//              Container(
//                child: ButtonBar(
//                  alignment: MainAxisAlignment.center,
//                  children: <Widget>[
//                    RaisedButton(
//                      onPressed: () {
//                        Navigator.push(context,
//                            MaterialPageRoute(builder: (context) => C3()));
//                      },
//                      color: Colors.lightBlueAccent,
//                      child: Text(
//                        'บุคลากร ครอบครัว อาชีพ',
//                        style: TextStyle(color: Colors.white),
//                      ),
//                    ),
//                  ],
//                ),
//              ),
//              Container(
//                child: ButtonBar(
//                  alignment: MainAxisAlignment.center,
//                  children: <Widget>[
//                    RaisedButton(
//                      onPressed: () {
//                        Navigator.push(context,
//                            MaterialPageRoute(builder: (context) => D4()));
//                      },
//                      color: Colors.green,
//                      child: Text(
//                        'ผัก ผลไม้ อาหาร',
//                        style: TextStyle(color: Colors.white),
//                      ),
//                    ),
//                  ],
//                ),
//              ),
//              Container(
//                child: ButtonBar(
//                  alignment: MainAxisAlignment.center,
//                  children: <Widget>[
//                    RaisedButton(
//                      onPressed: () {
//                        Navigator.push(context,
//                            MaterialPageRoute(builder: (context) => E5()));
//                      },
//                      color: Colors.yellow,
//                      child: Text(
//                        'วัน เดือน ปี เวลา',
//                        style: TextStyle(color: Colors.white),
//                      ),
//                    ),
//                  ],
//                ),
//              ),
//              Container(
//                child: ButtonBar(
//                  alignment: MainAxisAlignment.center,
//                  children: <Widget>[
//                    RaisedButton(
//                      onPressed: () {
//                        Navigator.push(context,
//                            MaterialPageRoute(builder: (context) => F6()));
//                      },
//                      color: Colors.orange,
//                      child: Text(
//                        'สถานที่ จังหวัด',
//                        style: TextStyle(color: Colors.white),
//                      ),
//                    ),
//                  ],
//                ),
//              ),
//              Container(
//                child: ButtonBar(
//                  alignment: MainAxisAlignment.center,
//                  children: <Widget>[
//                    RaisedButton(
//                      onPressed: () {
//                        Navigator.push(context,
//                            MaterialPageRoute(builder: (context) => G7()));
//                      },
//                      color: Colors.red,
//                      child: Text(
//                        'จำนวนนับ ตัวเลข',
//                        style: TextStyle(color: Colors.white),
//                      ),
//                    ),
//                  ],
//                ),
//              ),
//              Container(
//                child: ButtonBar(
//                  alignment: MainAxisAlignment.center,
//                  children: <Widget>[
//                    RaisedButton(
//                      onPressed: () {
//                        Navigator.push(context,
//                            MaterialPageRoute(builder: (context) => H8()));
//                      },
//                      color: Colors.pinkAccent,
//                      child: Text(
//                        'สัตว์',
//                        style: TextStyle(color: Colors.white),
//                      ),
//                    ),
//                  ],
//                ),
//              ),
//              Container(
//                child: ButtonBar(
//                  alignment: MainAxisAlignment.center,
//                  children: <Widget>[
//                    RaisedButton(
//                      onPressed: () {
//                        Navigator.push(context,
//                            MaterialPageRoute(builder: (context) => I9()));
//                      },
//                      color: Colors.purpleAccent,
//                      child: Text(
//                        'คุณลักษณะทั่วไป',
//                        style: TextStyle(color: Colors.white),
//                      ),
//                    ),
//                  ],
//                ),
//              ),
//              Container(
//                child: ButtonBar(
//                  alignment: MainAxisAlignment.center,
//                  children: <Widget>[
//                    RaisedButton(
//                      onPressed: () {
//                        Navigator.push(context,
//                            MaterialPageRoute(builder: (context) => J10()));
//                      },
//                      color: Colors.deepPurple,
//                      child: Text(
//                        'เบ็ตเตล็ด',
//                        style: TextStyle(color: Colors.white),
//                      ),
//                    ),
//                  ],
//                ),
//              ),
            ],
          ),
        ),
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
          RecomendCard(
            image: "assets/images/sanyalka.png",
            title: "สัญลักลักษณ์แทนการเคลื่อนไหว",
            country: "Symbols represent movement",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => A1(),
                ),
              );
            },
          ),
//          RecomendPlantCard(
//            image: "assets/images/2.jpg",
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

class RecomendCard extends StatelessWidget {
  const RecomendCard({
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
      width: size.width * 0.8,
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

class RecomePlants extends StatelessWidget {
  const RecomePlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          RecomendPlantCard(
            image: "assets/images/kud.png",
            title: "เครื่องใช้ เครื่องแต่งกาย",
            country: "Costume",
//            price: 440,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => B2(),
                ),
              );
            },
          ),
          RecomendPlantCard(
            image: "assets/images/fimary.png",
            title: "บุคลากร ครอบครัว",
            country: "Personnel,family",
//            price: 440,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => C3(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class RecomePlants2 extends StatelessWidget {
  const RecomePlants2({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          RecomendPlantCard(
            image: "assets/images/food.png",
            title: "ผลไม้ ",
            country: "Fruit",
//            price: 440,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => D4(),
                ),
              );
            },
          ),
          RecomendPlantCard(
            image: "assets/images/patition.jpg",
            title: "วัน เดือน ",
            country: "Day and Month",
//            price: 440,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => E5(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class RecomePlants3 extends StatelessWidget {
  const RecomePlants3({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          RecomendPlantCard(
            image: "assets/images/lokation.jpg",
            title: "สถานที่ จังหวัด",
            country: "Province location",
//            price: 440,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => F6(),
                ),
              );
            },
          ),
          RecomendPlantCard(
            image: "assets/images/num.jpg",
            title: "จำนวนนับ ตัวเลข",
            country: "Numerical number",
//            price: 440,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => G7(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class RecomePlants4 extends StatelessWidget {
  const RecomePlants4({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          RecomendPlantCard(
            image: "assets/images/anima.png",
            title: "สัตว์",
            country: "Animal",
//            price: 440,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => H8(),
                ),
              );
            },
          ),
          RecomendPlantCard(
            image: "assets/images/kunnal.jpg",
            title: "คุณลักษณะทั่วไป",
            country: "General feature",
//            price: 440,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => I9(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class RecomePlants5 extends StatelessWidget {
  const RecomePlants5({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          RecomendPlantCard(
            image: "assets/images/fadta.jpg",
            title: "เบ็ดเตล็ด",
            country: "miscellaneous",
//            price: 440,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => J10(),
                ),
              );
            },
          ),

        ],
      ),
    );
  }
}