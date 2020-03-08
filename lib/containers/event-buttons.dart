import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EventButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const SizedBox(height: 200),
                  Container(
                    margin: const EdgeInsets.only(right: 10.0),
                    child: RaisedButton(
                      onPressed: () {},
                      textColor: Colors.white,
                      padding: const EdgeInsets.all(0.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.indigo,
                        ),
                        padding: const EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 20),
                        child: const Text(
                          'Chat',
                          style: TextStyle(fontSize:18)
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 10.0),
                    child: RaisedButton(
                      onPressed: () {},
                      textColor: Colors.white,
                      padding: const EdgeInsets.all(0.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.indigo,
                        ),
                        padding: const EdgeInsets.only(left: 0, right: 0, top: 20, bottom: 20),

                        child: const Text(
                          'Expense',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 10.0),
                    child: RaisedButton(
                      onPressed: () {},
                      textColor: Colors.white,
                      padding: const EdgeInsets.all(0.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.indigo,
                        ),
                        padding: const EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 20),
                        child: const Text(
                          'Events',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 10.0),
                    child: RaisedButton(
                      onPressed: () {},
                      textColor: Colors.white,
                      padding: const EdgeInsets.all(0.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.indigo,
                        ),
                        padding: const EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 20),
                        child: const Text(
                          'Polls',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
    );;
  }
}
