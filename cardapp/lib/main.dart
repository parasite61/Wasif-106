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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 45.0,
                backgroundColor: Colors.white,
              ),
              Text('O Ki Haal Ayyy'),
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(15.0),
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.call,
                      color: Colors.black54,
                      size: 27.0,

                    ),
                    SizedBox(
                      width: 50.0,
                    )
                  ],
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}
