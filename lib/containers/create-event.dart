import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateEvent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Create Event',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('Create Event')
        ),
      )
    );
  }
}