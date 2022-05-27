import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(diceapp106());
}

class diceapp106 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amberAccent,
        appBar: AppBar(
          centerTitle: true,
          title: Text("WASIF MUSHTAQ"
          ),
          backgroundColor: Colors.redAccent,
        ),
        body: ClickAblbeDiceApp(),
      ),
    );
  }
}

class ClickAblbeDiceApp extends StatefulWidget {
  @override
  _ClickAblbeDiceAppState createState() => _ClickAblbeDiceAppState();
}

class _ClickAblbeDiceAppState extends State<ClickAblbeDiceApp> {
  int top_left = 6;
  int top_right = 5;
  int bottom_left =4;
  int bottom_right = 3;
  int left_right = 2;
  int right_left = 1;
  int sum1=0;
  int sum2=0;
  int sum3=0;
  int sum4=0;
  int sum5=0;
  int sum6=0;
  int same=0;
  int ex=0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: TextButton(
                child: Image.asset("images/dice$top_left.png"),
                onPressed: () {
                  setState(() {
                    top_left = Random().nextInt(6) + 1;
                    sum1=sum1+top_left;

                  });
                  print(top_left);
                },
              )),
          Expanded(
              child: TextButton(
                child: Image.asset("images/dice$top_right.png"),
                onPressed: () {
                  setState(() {
                    top_right = Random().nextInt(6) + 1;
                    sum2=sum2+top_right;
                  });
                  print(top_right);
                },
              )),
          Expanded(
              child: TextButton(
                child: Image.asset("images/dice$right_left.png"),
                onPressed: () {
                  setState(() {
                    top_right = Random().nextInt(6) + 1;
                    sum3=sum3+top_right;
                  });
                  print(top_right);
                },
              )),
          Expanded(
              child: TextButton(
                child: Image.asset("images/dice$left_right.png"),
                onPressed: () {
                  setState(() {
                    top_right = Random().nextInt(6) + 1;
                    sum4=sum4+top_right;
                  });
                  print(top_right);
                },
              )),
          Expanded(
              child: TextButton(
                child: Image.asset("images/dice$bottom_left.png"),
                onPressed: () {
                  setState(() {
                    bottom_left = Random().nextInt(6) + 1;
                    sum5=sum5+bottom_left;
                  });
                  print(bottom_left);
                },
              )),
          Expanded(
              child: TextButton(
                child: Image.asset("images/dice$bottom_right.png"),
                onPressed: () {
                  setState(() {
                    bottom_right = Random().nextInt(6) + 1;
                    sum6=sum6+bottom_right;
                  });
                  print(bottom_right);
                },
              )),
          Expanded(
              child: FlatButton(
                color: Colors.red,
                onPressed:() {
                  setState(() {
                    bottom_right = Random().nextInt(6) + 1;
                    sum1=sum1+bottom_right;
                    bottom_left = Random().nextInt(6) + 1;
                    sum2=sum2+bottom_left;
                    top_right = Random().nextInt(6) + 1;
                    sum3=sum3+left_right;
                    left_right = Random().nextInt(6) + 1;
                    sum4=sum4+right_left;
                    right_left = Random().nextInt(6) + 1;
                    sum5=sum5+top_left;
                    top_left = Random().nextInt(6) + 1;
                    sum6=sum6+top_left;
                  });
                  print(bottom_right);
                }, child: SizedBox(

              ),
              )
          )

        ],
      ),
    );



  }
}