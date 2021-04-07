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
import 'package:flutter_svg/flutter_svg.dart';

class study extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Study',
      theme: ThemeData(
        fontFamily: "Cairo",
        scaffoldBackgroundColor: kBackgroundColorstudy,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
    ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Study'),
          elevation: 0,
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
        body: StudyScreen(),
      ),
    );
  }
}


///////////////////////ของใหม่//////////////////////
class StudyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //this gonna give us total height and with of our device
    return Scaffold(
          body: Stack(
        children: <Widget>[
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        StudyScreen2 (
                          title: "สัญลักลักษณ์แทนการเคลื่อนไหว",
                          svgSrc: "https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/BackGround%2FpotoStudy%2Fhand.svg?alt=media&token=25517de1-f9ff-4a23-9717-b1ba91ad5c88",
                          press:  () {
                            Navigator.push(
                                  context,
                                MaterialPageRoute(
                                 builder: (context) => A1(),
                                    ),
                                  );
                                },
                        ),
                        StudyScreen2 (
                          title: "เครื่องใช้ เครื่องแต่งกาย",
                          svgSrc: "https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/BackGround%2FpotoStudy%2Fspatula.svg?alt=media&token=350984cf-0a78-4911-b05e-41aab139a039",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => B2(),
                ),
              );
            },
                        ),
                        StudyScreen2 (
                          title: "บุคลากร ครอบครัว",
                          svgSrc: "https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/BackGround%2FpotoStudy%2Ffamily.svg?alt=media&token=e2d3d072-7055-4880-8e87-bac5faecd529",
                          press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => C3(),
                ),
              );
            },
                        ),
                        StudyScreen2 (
                          title: "ผลไม้ ",
                          svgSrc: "https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/BackGround%2FpotoStudy%2Ffruits.svg?alt=media&token=c294cdd6-6b4b-452f-a0b6-0998d1d9df08",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => D4(),
                ),
              );
            },
                        ),
                        StudyScreen2 (
                          title: "วัน เดือน",
                          svgSrc: "https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/BackGround%2FpotoStudy%2Fschedule.svg?alt=media&token=3a7845bc-7490-4e0c-af01-63b0df494ea6",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => E5(),
                ),
              );
            },
                        ),
                        StudyScreen2 (
                          title: "สถานที่ จังหวัด",
                          svgSrc: "https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/BackGround%2FpotoStudy%2Fplace.svg?alt=media&token=2d93fd5d-3779-4f53-bdc0-4db44fdfc69b",
                          press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => F6(),
                ),
              );
            },
                        ),
                        StudyScreen2 (
                          title: "จำนวนนับ ตัวเลข ",
                          svgSrc: "https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/BackGround%2FpotoStudy%2Fnumbers.svg?alt=media&token=50ade57c-9045-4dc7-9242-32fe518a41ed",
                          press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => G7(),
                ),
              );
            },
                        ),
                        StudyScreen2 (
                          title: "สัตว์",
                          svgSrc: "https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/BackGround%2FpotoStudy%2Fpet.svg?alt=media&token=6d3c3e27-1e3d-4354-bbd4-aa89306657b7",
                          press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => H8(),
                ),
              );
            },
                        ),
                        StudyScreen2 (
                          title: "คุณลักษณะทั่วไป",
                          svgSrc: "https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/BackGround%2FpotoStudy%2Fvisionary.svg?alt=media&token=30921049-0de5-48ef-a5bf-4f92fb437a64",
                          press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => I9(),
                ),
              );
            },
                        ),
                        StudyScreen2 (
                          title: "เบ็ดเตล็ด ",
                          svgSrc: "https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/BackGround%2FpotoStudy%2Fteam-work.svg?alt=media&token=5d649153-22c4-4489-8b62-7ecc6a47613c",
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
                  ),
                ],
      ),
    );
  }
}

class StudyScreen2 extends StatelessWidget {
  final String svgSrc;
  final String title;
  final Function press;
  const StudyScreen2 ({
    Key key,
    this.svgSrc,
    this.title,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        // padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 17),
              blurRadius: 17,
              spreadRadius: -23,
              color: kShadowColor,
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: press,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Spacer(),
                  SvgPicture.network(svgSrc,
                  height: 100,
                  width: 80,
                ),
                  Spacer(),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .title
                        .copyWith(fontSize: 15),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}