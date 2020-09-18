import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DicePage(),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftUpperDice = 1 ;
  int rightUpperDice = 1;
  int leftLowerDice = 1;
  int rightLowerDice = 1;
  String winner = "";

  void dice(){
    setState(() {
      leftUpperDice = Random().nextInt(6)+ 1;
      rightUpperDice = Random().nextInt(6) + 1;
      leftLowerDice = Random().nextInt(6) +1;
      rightLowerDice = Random().nextInt(6) +1;

      if(leftUpperDice>rightUpperDice && leftUpperDice > leftLowerDice && leftUpperDice > rightLowerDice){
        winner = "Upper Left";
      }
      else {
        winner = "right";
      }
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Dice"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                    child: FlatButton(

                        onPressed: () {

                          print("I was pressed");
                          dice();
                        },
                        child: Image.asset('assets/dice$leftUpperDice.png'))),
                Expanded(
                    child: FlatButton(
                        onPressed: () {
                          print("I was pressed");
                          dice();
                        },
                        child: Image.asset("assets/dice$rightUpperDice.png"))),
                Expanded(
                    child: FlatButton(
                        onPressed: () {
                          print("I was pressed");
                          dice();
                        },
                        child: Image.asset("assets/dice$leftUpperDice.png"))),
                Expanded(
                    child: FlatButton(
                        onPressed: () {
                          print("I was pressed");
                          dice();
                        },
                        child: Image.asset("assets/dice$rightLowerDice.png"))),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Text(
              "Winner is $winner",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
