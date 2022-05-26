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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                color: Colors.teal,
                height: 150.0,
                width: 150.0,
                child: Text('WASIF'),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                color: Colors.greenAccent,
                height: 150.0,
                width: 150.0,
                child: Text('WASIF'),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                color: Colors.deepOrange,
                height: 150.0,
                width: 150.0,
                child: Text('WASIF'),
              ),
            ],
          )
        ),
      ),
    );
  }
}
