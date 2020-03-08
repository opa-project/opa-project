import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:opa_project/containers/event-buttons.dart';

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
        body: Container(
          child: EventButtons()
        )
      )
    );
  }
}


