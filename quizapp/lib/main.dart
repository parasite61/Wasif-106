import 'package:flutter/material.dart';

void main() {
  runApp(quiz());
}
class quiz extends StatelessWidget {
  const quiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Quiz App"),
        centerTitle: true,),
      ),
    );
  }
}
