import 'package:flutter/material.dart';
import 'package:flutter_01/quiz.dart';
import 'package:flutter_01/result.dart';

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
  static const List<Map<String, List<Map<String, Object>>>> _questions = [
    {
      "q": [
        {"text": "Favourite color?"}
      ],
      "ans": [
        {"text": "red", "score": 1},
        {"text": "green", "score": 2},
        {"text": "blue", "score": 3},
      ],
    },
    {
      "q": [
        {"text": "Favourite animal?"}
      ],
      "ans": [
        {"text": "lion", "score": 1},
        {"text": "dolphin", "score": 2},
        {"text": "monkey", "score": 3},
      ],
    },
    {
      "q": [
        {"text": "Favourite vegetable?"}
      ],
      "ans": [
        {"text": "potato", "score": 1},
        {"text": "tomato", "score": 2},
        {"text": "carrot", "score": 3},
      ],
    },
  ];
  var _qIndex = 0;
  int _totalScore = 0;

  void _onClick(int score) {
      _totalScore += score;
      print("onClick!");
      setState(() {});
      print("qIndex=$_qIndex");
      _qIndex++;
  }

  void _reset() {
      setState(() {
        _totalScore = 0;
        _qIndex = 0;
      });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Title"),
      ),
      body: _qIndex < _questions.length ? Quiz(_questions, _qIndex, _onClick) : Result(_totalScore, _reset),
    ));
  }
}
