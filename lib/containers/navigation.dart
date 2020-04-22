import 'package:flutter/material.dart';

import 'package:opa_project/containers/dashboard.dart';
import 'package:opa_project/containers/messages.dart';
import 'package:opa_project/containers/search.dart';
import 'package:opa_project/containers/notifications.dart';



class Navigation extends StatefulWidget{

  @override
  _NavigationState createState() => _NavigationState();

  }

class _NavigationState extends State<Navigation> {

  int _currentIndex = 0;
  Widget callPage( int currentIndex){
    switch(currentIndex){
      case 0: return Dashboard();
      case 1: return Search();
      case 2: return Notifications();
      case 3: return Messages();

        break;
        default:return Dashboard();
    }
  }

  // final pages = 
  // [
  //   Dashboard(),
  //   Messages(),
  //   (),
  //   CreateEvent(),
  // ];
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

      body: callPage(_currentIndex),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items:[
          BottomNavigationBarItem (
          icon: Icon(Icons.home),
          title: Text('Home'),
          backgroundColor: Colors.blue
          ),

          BottomNavigationBarItem (
          icon: Icon(Icons.search),
          title: Text('Search'),
          backgroundColor: Colors.blue
          ),

          BottomNavigationBarItem (
          icon: Icon(Icons.notifications),
          title: Text('Notifcations'),
          backgroundColor: Colors.blue
          ),

          BottomNavigationBarItem (
          icon: Icon(Icons.chat_bubble_outline),
          title: Text('Messages'),
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