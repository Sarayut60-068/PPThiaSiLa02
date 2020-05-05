import 'package:flutter/material.dart';
import 'loginPage.dart';

class setup extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Search',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Search'),
          backgroundColor: Colors.grey,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search), onPressed: () {
              showSearch(context: context, delegate: DataSearch());
            })
          ],
        ),
        drawer: Drawer(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SecondPage()));
          },

          child: Icon(Icons.home),
          backgroundColor: Colors.purple,
        ),
        body: Container(color: Colors.teal,),


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
          color: Colors.red,
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