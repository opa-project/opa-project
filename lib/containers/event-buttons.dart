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
              child: Flex(
                direction: Axis.horizontal,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    child: RaisedButton(
                      onPressed: () {},
                      textColor: Colors.white,
                      padding: const EdgeInsets.all(0.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.indigo,
                        ),
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          height: 50,
                          width: 70,
                          child: Flex(
                            direction: Axis.vertical,
                              children: <Widget>[
                                const Icon(
                                  Icons.chat,
                                ),
                                const Text(
                                    'Chat',
                                    style: TextStyle(fontSize:18)
                                ),
                              ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: RaisedButton(
                      onPressed: () {},
                      textColor: Colors.white,
                      padding: const EdgeInsets.all(0.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.indigo,
                        ),
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          height: 50,
                          width: 70,
                          child: Flex(
                            direction: Axis.vertical,
                            children: <Widget>[
                              const Icon(
                                Icons.event_note,
                              ),
                              const Text(
                                  'Events',
                                  style: TextStyle(fontSize:18)
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: RaisedButton(
                      onPressed: () {},
                      textColor: Colors.white,
                      padding: const EdgeInsets.all(0.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.indigo,
                        ),
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          height: 50,
                          width: 70,
                          child: Flex(
                            direction: Axis.vertical,
                            children: <Widget>[
                              const Icon(
                                Icons.attach_money,
                              ),
                              const Text(
                                  'Expense',
                                  style: TextStyle(fontSize:18)
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: RaisedButton(
                      onPressed: () {},
                      textColor: Colors.white,
                      padding: const EdgeInsets.all(0.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.indigo,
                        ),
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          height: 50,
                          width: 70,
                          child: Flex(
                            direction: Axis.vertical,
                            children: <Widget>[
                              const Icon(
                                Icons.poll,
                              ),
                              const Text(
                                  'Polls',
                                  style: TextStyle(fontSize:18)
                              ),
                            ],
                          ),
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
