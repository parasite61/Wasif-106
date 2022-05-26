import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        body: SafeArea(
          child: Container(
            color: Colors.teal,
            height: 150.0,
            width: 150.0,
            margin: EdgeInsets.all(50.0),
            padding: EdgeInsets.all(30.0),
            child: Text('WASIF'),
          ),
        ),
      ),
    );
  }
}
