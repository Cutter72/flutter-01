import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback _onPressed;
  final String _text;

  Answer(this._onPressed, this._text);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateColor.resolveWith((states) => Colors.black87),
            foregroundColor: MaterialStateProperty.all(Colors.white70),
          ),
          onPressed: _onPressed,
          child: Text(_text),
        ));
  }
}
