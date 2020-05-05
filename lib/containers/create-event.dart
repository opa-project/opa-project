import 'package:flutter/material.dart';

import '../create-event-button.dart';

class CreateEvent extends StatelessWidget {
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
                child: CreateEventButton()
            )
        )
    );
  }
}
