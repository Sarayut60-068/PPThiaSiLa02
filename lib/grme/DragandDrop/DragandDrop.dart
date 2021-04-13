import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:thaisila02/constants.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Matching Game",
      home: DragandDrop(),

    );
  }
}

class DragandDrop extends StatefulWidget {
  @override
  _DragandDropState createState() => _DragandDropState();
}


class _DragandDropState extends State<DragandDrop> {

  List<ItemModel> items;
  List<ItemModel>items2;

  int score;
  bool gameOver;

  @override
  void initState() {
    super.initState();
    initGame();
  }

  initGame(){
    gameOver = false;
    score=0;
    items=[
      ItemModel(icon:FontAwesomeIcons.cat,
          image:"https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/GameA%2Fcat.jpg?alt=media&token=e155e365-5035-41ce-93bd-f0a1f0c6871a",
          value:"แมว"),
      ItemModel(icon:FontAwesomeIcons.frog,
          image:"https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/GameA%2Ffrog.jpg?alt=media&token=799798fd-b19e-405c-8578-2459ab21d05f",
          value:"กบ"),
      ItemModel(icon:FontAwesomeIcons.dragon,
          image:"https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/GameA%2Fsnake.jpg?alt=media&token=c9daaa74-d205-424c-85f6-8e967b4672f5",
          value:"งู"),
      ItemModel(icon:FontAwesomeIcons.horse,
          image:"https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/GameA%2Fhorse.jpg?alt=media&token=fa33012f-f467-4e5b-acb4-07a0484156b3",
          value:"ม้า"),
      ItemModel(icon:FontAwesomeIcons.dove,
          image:"https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/GameA%2Fdoue.jpg?alt=media&token=bed912c8-20a6-4cb3-91b9-b454c5a45e63",
          value:"นก"),

//      ItemModel(icon:FontAwesomeIcons.bus,name:"bus", value:"bus"),
    ];
    items2 = List<ItemModel>.from(items);
    items.shuffle();
    items2.shuffle();
  }


  @override
  Widget build(BuildContext context) {
    if(items.length == 0)
      gameOver = true;
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Matching Game'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text.rich(TextSpan(
                children: [
                  TextSpan(text: "Score: "),
                  TextSpan(text: "$score", style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ))
                ]
            )
            ),
            if(!gameOver)
              Row(
                children: <Widget>[
                  Column(
                      children: items.map((item) {
                        return Container(
                          margin: const EdgeInsets.all(8.0),
                          child: Draggable<ItemModel>(
                            data: item,
                            childWhenDragging: Icon(
                              item.icon, color: Colors.grey,size: 50.0,),
                            feedback: Icon(item.icon,color: Colors.teal,size: 50,),
                            child: Icon(item.icon, color: Colors.teal, size:50,),
                          ),
                        );


                      }).toList()
                  ),
                  Spacer(

                  ),
                  Column(
                      children: items2.map((item){
                        return DragTarget<ItemModel>(
                          onAccept: (receivedItem){
                            if(item.value== receivedItem.value){
                              setState(() {
                                items.remove(receivedItem);
                                items2.remove(item);
                                score+=10;
                                item.accepting =false;
                              });

                            }else{
                              setState(() {
                                score-=5;
                                item.accepting =false;

                              });
                            }
                          },
                          onLeave: (receivedItem){
                            setState(() {
                              item.accepting=false;
                            });
                          },
                          onWillAccept: (receivedItem){
                            setState(() {
                              item.accepting=true;
                            });
                            return true;
                          },
                          builder: (context, acceptedItems,rejectedItem) => Container(
                            color: item.accepting? Colors.red:Colors.teal,
                            height: 200,
                            width: 200,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(2.0),
                            child: Image.network(item.image,

//                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,
//                                fontSize: 18.0
//                              ),
                            ),
                          ),


                        );

                      }).toList()

                  ),
                ],
              ),
            if(gameOver)
              Text("GameOver", style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
              ),),
            if(gameOver)
              Center(
                child: RaisedButton(
                  textColor: Colors.white,
                  color: Colors.pink,
                  child: Text("New Game"),
                  onPressed: ()
                  {
                    initGame();
                    setState(() {

                    });
                  },
                ),
              )

          ],
        ),

      ),
    );
  }
}

class ItemModel {
  final String image;
  final String value;
  final IconData icon;

  bool accepting;

  ItemModel({this.image,  this.value, this.icon, this.accepting= false});

}