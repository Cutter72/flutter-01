import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _totalScore;

  Result(this._totalScore);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Your score is $_totalScore!",
        style: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
