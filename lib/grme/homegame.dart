import 'package:flutter/material.dart';
import 'package:thaisila02/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:thaisila02/grme/DragandDrop/DragandDrop.dart';
import 'package:thaisila02/grme/quizz/quizzmain.dart';
import 'package:thaisila02/loginPage.dart';

class homegame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //this gonna give us total height and with of our device

    return Scaffold(
      appBar: AppBar(
        title: Text('ยินดีต้อนรับสู่แบบทดสอบ'),
        backgroundColor: Colors.lightBlueAccent,
      ),

      body: Stack(
        children: <Widget>[
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                    new Image.network(
                      'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/BackGround%2Fclouds.png?alt=media&token=b576ee61-884f-4787-a3aa-12bce5e2ccd3',
                      width: 600.0,
                      height: 240.0,
                      fit: BoxFit.cover,
                    ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        CategoryCard(
                          title: "คำถาม",
                          svgSrc:
                          "https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/GameA%2Fchoose.svg?alt=media&token=05367d4e-3a20-436f-90cc-932534d1019e",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => QuizzApp(),
                              ),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "ลากวาง",
                          svgSrc:
                          "https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/GameA%2Fdrag.svg?alt=media&token=9997ac4f-1204-43cc-a4bb-a3441a46cd3c",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DragandDrop(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  new Image.network(
                    'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/BackGround%2Fforest.png?alt=media&token=4813849d-e743-4a9b-9987-180ee92d85c2',
                    width: 600.0,
                    height: 240.0,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String svgSrc;
  final String title;
  final Function press;
  const CategoryCard({
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
                  SvgPicture.network(
                    svgSrc,
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

class BottomNavItem extends StatelessWidget {
  final String svgScr;
  final String title;
  final Function press;
  final bool isActive;
  const BottomNavItem({
    Key key,
    this.svgScr,
    this.title,
    this.press,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SvgPicture.network(
            svgScr,
            color: isActive ? kActiveIconColor : kTextColor,
            height: 30,
            width: 20,
          ),
          Text(
            title,
            style: TextStyle(color: isActive ? kActiveIconColor : kTextColor),
          ),
        ],
      ),
    );
  }
}
