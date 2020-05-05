import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Events extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
              padding: EdgeInsets.fromLTRB(10, 30, 10, 10),
              height: 220,
              width: double.maxFinite,
              child: Card(
                elevation: 5,
                child: Padding(
                  padding: EdgeInsets.all(7),
                  child: Stack(children: <Widget>[
                    Align(
                      alignment: Alignment.centerRight,
                      child: Stack(
                        children: <Widget>[
                          Padding(
                              padding: const EdgeInsets.only(left: 10, top: 5),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
//                                      icon(),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Spacer(),
                                      SizedBox(
                                        width: 10,
                                      ),
//                                      changeIcon(),
                                      SizedBox(
                                        width: 20,
                                      )
                                    ],
                                  ),
                                ],
                              ))
                        ],
                      ),
                    )
                  ]),
                ),
              ),
            )));
  }
//  Widget icon() {
//    return Padding(
//      padding: const EdgeInsets.only(left: 15.0),
//      child: Align(
//          alignment: Alignment.centerLeft,
//          child: Icon(
//            Icons.access_alarm,
//            color: Colors.amber,
//            size: 40,
//          )),
//    );
//  }
//  Widget nameSymbol() {
//    return Align(
//      alignment: Alignment.centerLeft,
//      child: RichText(
//        text: TextSpan(
//          text: 'text',
//          style: TextStyle(
//              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
//          children: <TextSpan>[
//            TextSpan(
//                text: 'text',
//                style: TextStyle(
//                    color: Colors.grey,
//                    fontSize: 15,
//                    fontWeight: FontWeight.bold)),
//          ],
//        ),
//      ),
//    );
//  }
//
//  Widget changeIcon() {
//    return Align(
//        alignment: Alignment.topRight,
//        child: Icon(
//          Typicons.arrow_sorted_up,
//          color: Colors.green,
//          size: 30,
//        ));
//  }
}