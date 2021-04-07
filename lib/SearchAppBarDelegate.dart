// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';

// class CloudFirestoreSearch extends StatefulWidget {
//   @override
//   _CloudFirestoreSearchState createState() => _CloudFirestoreSearchState();
// }

// class _CloudFirestoreSearchState extends State<CloudFirestoreSearch> {
//   String name = "";

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back_ios),
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//         ),
//         title: Card(
//           child: TextField(
//             decoration: InputDecoration(
//                 prefixIcon: Icon(Icons.search), hintText: 'Search...'),
//             onChanged: (val) {
//               setState(() {
//                 name = val;
//               });
//             },
//           ),
//         ),
//       ),
//       body: StreamBuilder<QuerySnapshot>(
//         stream: (name != "" && name != null)
//             ? Firestore.instance
//                 .collection('image')
//                 .where("searchKey", arrayContains: name)
//                 .snapshots()
//             : Firestore.instance.collection("image").snapshots(),
//         builder: (context, snapshot) {
//           return (snapshot.connectionState == ConnectionState.waiting)
//               ? Center(child: CircularProgressIndicator())
//               : ListView.builder(
//                   itemCount: snapshot.data.documents.length,
//                   itemBuilder: (context, index) {
//                     DocumentSnapshot data = snapshot.data.documents[index];
//                     return Card(
//                       child: Row(
//                         children: <Widget>[
//                           Image.network(
//                             data['imageUrl'],
//                             width: 150,
//                             height: 100,
//                             fit: BoxFit.fill,
//                           ),
//                           SizedBox(
//                             width: 25,
//                           ),
//                           Text(
//                             data['name'],
//                             style: TextStyle(
//                               fontWeight: FontWeight.w700,
//                               fontSize: 20,
//                             ),
//                           ),
//                         ],
//                       ),
//                     );
//                   },
//                 );
//         },
//       ),
//     );
//   }

// }

// import 'dart:html';

//
//import 'package:firebase_core/firebase_core.dart';
//import 'package:flutter/material.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
// // import 'package:lottie/lottie.dart';
//
//
// class SearcPageDate extends StatefulWidget {
//   @override
//   _SearcPageDateState createState() => _SearcPageDateState();
// }
//
// class _SearcPageDateState extends State<SearcPageDate> {
//
//   // TextEditingController addController = TextEditingController(); //สำหรับเพิ่มข้อมูล
//   TextEditingController textEditingController = TextEditingController(); //สำหรับค้นหาข้อมูล
//   final database = Firestore.instance;
//   String searchString;
//
//   Widget build(BuildContext context) {
//     /////////////////////เพิ่มข้อมูล/////////////////
//     //   uploadData(String name) async{
//
//     //   List<String> splitList = name.split(' ');
//     //   List<String> indexList = [];
//
//     //   for (int i =0;  i < splitList.length; i++){
//     //     for (int j =0;  j < splitList[i].length; j++){
//     //       indexList.add(splitList[i].substring(0,j).toLowerCase());
//     //     }
//     //   }
//
//     //   database
//     //     .collection('image')
//     //     .add({'image' : name, 'searchKey': indexList});
//
//     // }
//
//     //   return Scaffold(
//     //         appBar: AppBar(),
//     //     body: Container(
//     //       child: Column(
//     //         children: <Widget>[
//     //           Padding(
//     //             padding: const EdgeInsets.all(15.0),
//     //             child: TextField(
//     //               controller: addController,
//     //               decoration: InputDecoration(
//     //                 suffixIcon: IconButton(
//     //                   icon: Icon(Icons.clear),
//     //                   // onPressed: () => searchController.clear(),
//     //                   onPressed: () => addController.clear(),
//     //                   ),
//     //                   hintText: 'Search here!',
//     //                   hintStyle:
//     //                       TextStyle(fontFamily: 'Antra', color: Colors.blueAccent)
//     //               ),
//     //             ),
//     //           ),
//     //           MaterialButton(
//     //             color: Colors.blueAccent,
//     //             child: Text('Upload Date'),
//     //             onPressed: () async {
//     //               uploadData(addController.text);
//     //             }
//     //             ),
//     //         ],
//     //       ),
//     //     ),
//     //     );
//
///////////////////////ค้นหาข้อมูล/////////////////
//     return Scaffold(
//       appBar: AppBar(),
//       body: Column(
//         children: <Widget>[
//           Expanded(
//             child: Column(
//               children: <Widget>[
//                 Padding(
//                   padding: const EdgeInsets.all(15.0),
//                   child: Container(
//                     child: TextField(
//                       onChanged: (val) {
//                         setState(() {
//                           searchString = val.toLowerCase();
//                         });
//                       },
//                       controller: textEditingController,
//                       decoration: InputDecoration(
//                           suffixIcon: IconButton(
//                               icon: Icon(Icons.clear),
//                               onPressed: () => textEditingController.clear()),
//                           hintText: 'Seach produch here!',
//                           hintStyle: TextStyle(
//                               fontFamily: 'Anter', color: Colors.blueAccent)),
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   child: StreamBuilder<QuerySnapshot>(
//                     stream: (searchString == null ||
//                         searchString.trim() == ' ')
//                         ? Firestore.instance.collection('search').snapshots()
//                         : Firestore.instance
//                         .collection('search')
//                         .where('Name', arrayContains: searchString)
//                         .snapshots(),
//                     builder: (context, snapshot) {
//                       if (snapshot.hasError) {
//                         return Text('We got an error ${snapshot.error}');
//                       }
//                       switch (snapshot.connectionState) {
//                         case ConnectionState.waiting:
//                           return SizedBox(
//                             child: Center(
//                               // child: Lottie.network(''),
//                             ),
//                           );
//                         case ConnectionState.none:
//                           return Text('Oops no data present!');
//
//                         case ConnectionState.done:
//                           return Text('We are done!');
//
//                         default:
//                           return new ListView(
//                             // ignore: deprecated_member_use
//                               children: snapshot.data.documents
//                                   .map((DocumentSnapshot document) {
//                                 return new ListTile(
//                                   title: Text(document['image']),
//                                 );
//                               }).toList());
//                       }
//                     },
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

/////////////////ของใหม่กว่าาาา///////////
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class CloudFirestoreSearch extends StatefulWidget {
  @override
  _CloudFirestoreSearchState createState() => _CloudFirestoreSearchState();
}

class _CloudFirestoreSearchState extends State<CloudFirestoreSearch> {
  String name = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Card(
          child: TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.search), hintText: 'Search...'),
            onChanged: (val) {
              setState(() {
                name = val;
              });
            },
          ),
        ),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: (name != "" && name != null)
            ? Firestore.instance
                .collection('items')
                .where("searchKeywords", arrayContains: name)
                .snapshots()
            : Firestore.instance.collection("items").snapshots(),
        builder: (context, snapshot) {
          return (snapshot.connectionState == ConnectionState.waiting)
              ? Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemCount: snapshot.data.documents.length,
                  itemBuilder: (context, index) {
                    DocumentSnapshot data = snapshot.data.documents[index];
                    return Card(
                      child: Row(
                        children: <Widget>[
                          Image.network(
                            data['imageUrl'],
                            width: 150,
                            height: 100,
                            fit: BoxFit.fill,
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Text(
                            data['name'],
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
        },
      ),
    );
  }
}
