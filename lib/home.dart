import 'package:flutter/material.dart';
import 'package:thaisila02/contact.dart';
import 'package:thaisila02/setting.dart';
import 'loginPage.dart';
import 'home.dart';



class home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     // TODO: implement build
    return MaterialApp(
      title: 'Profile',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Profile'),
          backgroundColor: Colors.deepOrangeAccent,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SecondPage()));
          },
          child: Icon(Icons.home),
          backgroundColor: Colors.deepOrangeAccent,
        ),

        body: Container(color: Colors.amberAccent),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('Sarayut Rattanachot'),
                accountEmail: Text('s6035512068@phuket.psu.ac.th'),
                currentAccountPicture: GestureDetector(
                  child: CircleAvatar(
                    backgroundImage: NetworkImage("https://scontent.fbkk5-6.fna.fbcdn.net/v/t1.0-9/75550501_2495230860553086_3725527281922211840_o.jpg?_nc_cat=101&_nc_sid=0be424&_nc_eui2=AeHavvWDPNtalcv3ftMKcparj3k5M5cnaNWPeTkzlydo1Y_SWkDNm8yIz4IM1cvkMSIMp1PSf3tvlbzqAnayfNEw&_nc_ohc=nHQ4MbVHAj0AX8W31FJ&_nc_ht=scontent.fbkk5-6.fna&oh=37983ee65a11161f74d176203b5ac042&oe=5EB2B820"),
                  ),
                ),

                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage("https://www.shutterstock.com/th/blog/wp-content/uploads/sites/16/2018/09/21.jpg?w=750"),
                  ),
                ),
              ),
              ListTile(
                title: Text('ตั้งค่า'),
                trailing: Icon(Icons.arrow_forward),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext) => Setting("Setting"))),
              ),
             //Divider(),
              ListTile(
                title: Text('ติดต่อ'),
                trailing: Icon(Icons.arrow_forward),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext) => Contact("ติดต่อฉัน"))),
              ),
              //Divider(),
            ],

          ),
        ),

      ),
    );
  }
}

