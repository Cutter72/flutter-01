import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// dupacyscki
/// ikiełbasa
class MyApp extends StatefulWidget {
  @override
  State createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questions = ["q1", "q2", "q3"];
  var qIndex = 0;
  var aMixedList = [
    'Some text',
    1,
    5.99,
    ['a nested list!', 1]
  ];

  Function()? onClick(msg) {
    return () {
      print("onClick!");
      print(msg);
      setState(() {
        qIndex++;
      });
      print("qIndex=$qIndex");
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
        Text(questions[qIndex]),
        ElevatedButton(
          onPressed: onClick("msg"),
          child: Text("onClick"),
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
