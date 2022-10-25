import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _totalScore;

  final VoidCallback _reset;

  Result(this._totalScore, this._reset);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            "Your score is $_totalScore!",
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          BackButton(
            onPressed: _reset,
          ),
        ],
      ),
    );
  }
}
