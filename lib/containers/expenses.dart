import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Expenses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Expenses',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('Expenses')
        ),
      )
    );
  }
}