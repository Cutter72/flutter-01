import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback _onPressed;

  Answer(this._onPressed);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateColor.resolveWith((states) => Colors.black),
          ),
          child: Text('Answer1'),
          onPressed: _onPressed,
        ));
  }
}
