import 'package:flutter/material.dart';
import 'package:thaisila02/grme/quizz/result.dart';
import 'package:thaisila02/grme/DragandDrop/DragandDrop.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
 // import 'package:lottie/lottie.dart';


class score extends StatefulWidget {

//  @override
//  Widget build(BuildContext context) {
//    var size = MediaQuery.of(context)
//        .size; //this gonna give us total height and with of our device
//
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('คะแนน'),
//        backgroundColor: Colors.lightBlueAccent,
//      ),
//
//      body: Stack(
//        children: <Widget>[
//          SafeArea(
//            child: Padding(
//              padding: const EdgeInsets.symmetric(horizontal: 20),
//              child: Column(
//                crossAxisAlignment: CrossAxisAlignment.start,
//                children: <Widget>[
//                  new Image.network(
//                    'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/BackGround%2Fclouds.png?alt=media&token=b576ee61-884f-4787-a3aa-12bce5e2ccd3',
//                    width: 600.0,
//                    height: 240.0,
//                    fit: BoxFit.cover,
//                  ),
////                  Text("$resultScore"),
////                  Text("$score"),
//
//
//
//                  new Image.network(
//                    'https://firebasestorage.googleapis.com/v0/b/thaisila02.appspot.com/o/BackGround%2Fforest.png?alt=media&token=4813849d-e743-4a9b-9987-180ee92d85c2',
//                    width: 600.0,
//                    height: 240.0,
//                    fit: BoxFit.cover,
//                  ),
//                ],
//              ),
//            ),
//          ),
//        ],
//      ),
//    );
//  }


   @override
   _scoreState createState() => _scoreState();
 }

 class _scoreState extends State<score> {

   TextEditingController addController = TextEditingController(); //สำหรับเพิ่มข้อมูล
   final database = Firestore.instance;
   String searchString;


   Widget build(BuildContext context) {
     /////////////////////เพิ่มข้อมูล/////////////////
     uploadData(String name) async {
       List<String> splitList = name.split(' ');
       List<String> indexList = [];

       for (int i = 0; i < splitList.length; i++) {
         for (int j = 0; j < splitList[i].length; j++) {
           indexList.add(splitList[i].substring(0, j).toLowerCase());
         }
       }

       database
           .collection('image')
           .add({'image': name, 'searchKey': indexList});
     }

     return Scaffold(
       appBar: AppBar(),
       body: Container(
         child: Column(
           children: <Widget>[
             Padding(
               padding: const EdgeInsets.all(15.0),
               child: TextField(
                 controller: addController,
                 decoration: InputDecoration(
                     suffixIcon: IconButton(
                       icon: Icon(Icons.clear),
                       onPressed: () => addController.clear(),
                     ),
                     hintText: 'บันทึกคะแนนคะแนนของคุณ',
                     hintStyle:
                     TextStyle(fontFamily: 'Antra', color: Colors.blueAccent)
                 ),
               ),
             ),
             MaterialButton(
                 color: Colors.blueAccent,
                 child: Text('Upload Date'),
                 onPressed: () async {
                   uploadData(addController.text);
                 }
             ),


                 Expanded(
                   child: StreamBuilder<QuerySnapshot>(
                     stream: (searchString == null ||
                         searchString.trim() == ' ')
                         ? Firestore.instance.collection('image').snapshots()
                         : Firestore.instance
                         .collection('image')
                         .where('image', arrayContains: searchString)
                         .snapshots(),
                     builder: (context, snapshot) {

                       switch (snapshot.connectionState) {
                         case ConnectionState.waiting:
                           return SizedBox(
                             child: Center(
                               // child: Lottie.network(''),
                             ),
                           );

                         default:
                           return new ListView(
                             // ignore: deprecated_member_use
                               children: snapshot.data.documents
                                   .map((DocumentSnapshot document) {
                                 return new ListTile(
                                   title: Text(document['image']),
                                 );
                               }).toList());
                       }
                     },
                   ),
                 ),


           ],
         ),
       ),
     );
   }
 }

