import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Dashboard',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('Dashboard')
        ),
      )
    );
  }
}


