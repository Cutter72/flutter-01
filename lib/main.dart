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
  final _questions = ["q1", "q2", "q3"];
  var _qIndex = 0;

  VoidCallback onClick(String msg) {
    return () {
      print("onClick!");
      print(msg);
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
      body: Column(children: <Widget>[
        Question(_questions[_qIndex]),
        Answer(onClick("Answer 1")),
        Answer(onClick("Answer 2")),
        Answer(onClick("Answer 3")),
      ]),
    ));
  }
}
