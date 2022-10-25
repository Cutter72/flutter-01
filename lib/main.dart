import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_01/answer.dart';
import 'package:flutter_01/question.dart';

void main() => runApp(MyApp());

/// dupacyscki
/// ikiełbasa
class MyApp extends StatefulWidget {
  @override
  State createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  static const List<Map<String, List<String>>> _questions = [
    {
      "q": ["Favourite color?"],
      "ans": [
        "red",
        "gree",
        "blue",
      ]
    },
    {
      "q": ["Favourite animal?"],
      "ans": [
        "lion",
        "crocodile",
        "delphin",
      ]
    },
    {
      "q": ["Favourite vegetable?"],
      "ans": [
        "potato",
        "pumpkin",
        "tomato",
      ]
    },
  ];
  var _qIndex = 0;

  VoidCallback _onClick() {
    return () {
      print("onClick!");
      setState(() {});
      print("qIndex=$_qIndex");
      _qIndex++;
    };
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Title"),
      ),
      body: _qIndex < _questions.length
          ? Column(children: <Widget>[
              Question(_questions[_qIndex]["q"]![0]),
              ..._questions[_qIndex]["ans"]!.map((e) => Answer(_onClick(), e)).toList(),
            ])
          : const Center(
              child: Text("You did it!"),
            ),
    ));
  }
}
