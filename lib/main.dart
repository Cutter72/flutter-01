import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// dupacyscki
/// ikiełbasa
class MyApp extends StatelessWidget {

  void onClick(msg) {
    print("onClick!");
    print(msg);
  }

  @override
  Widget build(BuildContext context) {
    var questions = ["q1", "q2", "q3"];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Title"),
      ),
      body: Column(children: <Widget>[
        Text("text_1"),
        ElevatedButton(
          onPressed: () => onClick("msg"),
          child: Text("answaer1"),
        ),
        ElevatedButton(
          onPressed: () => print("clicked! 2"),
          child: Text("answaer2"),
        ),
        ElevatedButton(
          onPressed: () => print("clicked! 3"),
          child: Text("answaer3"),
        ),
      ]),
    ));
  }
}
