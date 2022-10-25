import 'package:flutter/material.dart';
import 'package:flutter_01/answer.dart';
import 'package:flutter_01/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, List<Map<String, Object>>>> _questions;

  final int _qIndex;

  final VoidCallback _onClick;

  Quiz(this._questions, this._qIndex, this._onClick);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Question(_questions[_qIndex]["q"]![0]["text"] as String),
      ..._questions[_qIndex]["ans"]!.map((e) => Answer(_onClick, e["text"] as String)).toList(),
    ]);
  }
}
