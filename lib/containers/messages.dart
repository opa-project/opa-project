import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Messages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Messages',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('Messages')
        ),
      )
    );
  }
}