import 'package:flutter/material.dart';

class Navigation extends StatefulWidget{

  @override
  _NavigationState createState() => _NavigationState();

  }

class _NavigationState extends State<Navigation> {

  int _currentIndex = 0;
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items:[
          BottomNavigationBarItem (
          icon: Icon(Icons.home),
          title: Text('Home'),
          backgroundColor: Colors.blue
          ),

          BottomNavigationBarItem (
          icon: Icon(Icons.chat),
          title: Text('Messages'),
          backgroundColor: Colors.blue
          ),

          BottomNavigationBarItem (
          icon: Icon(Icons.attach_money),
          title: Text('Expenses'),
          backgroundColor: Colors.blue
          ),

          BottomNavigationBarItem (
          icon: Icon(Icons.add),
          title: Text('Create Event'),
          backgroundColor: Colors.blue
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        
        ),
    )
    );
  }
}