import 'package:flutter/material.dart';
import 'package:ta_mdp/Screen/home.dart';
// import 'dart:convert';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final List<String> avatar = <String>['profile.jpg'];
  final List<String> nama = <String>['Sayid Miqdad'];
  final List<String> nim = <String>['21120119130046'];
  final List<String> email = <String>['sayid@gmail.com'];

  final int _selectedIndex = 1;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Person',
      style: optionStyle,
    ),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile'),
          backgroundColor: Colors.black),
            backgroundColor: Colors.brown[800],
      body: Center(
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
            itemCount: nama.length, // the length
            itemBuilder: (BuildContext context, int index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 220,
                    height: 250,
                    child: Card(
                      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
                      child: Image.asset(
                        avatar[index],
                        fit: BoxFit.cover,
                      ),
                      elevation: 55,
                      margin: EdgeInsets.only(top: 60, bottom: 20, left: 20, right: 20),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(nama[index],
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Text('Kelompok 07',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                    width: 200,
                    child: Divider(
                      color: Colors.black
                    ),
                  ),
                  Card(
                    color: Colors.blueGrey[400],
                    margin: EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 75.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.badge,
                        color: Colors.blueGrey[100],
                      ),
                      title: Text(nim[index]),
                    ),
                  ),
                  Card(
                    color: Colors.blueGrey[400],
                    margin: EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 75.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.email,
                        color: Colors.blueGrey[100],
                      ),
                      title: Text(email[index]),
                    )
                  ),
                ],
              );
            }
        )
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.indigo,
      onTap: (int index) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ),
        );
      },
    ),
    );
  }
}