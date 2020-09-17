import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            //mainAxisSize: MainAxisSize.min,
            //verticalDirection: VerticalDirection.up,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.white,
                child: Text("Hello"),

              ),
              SizedBox(height: 20,),
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.blue,
                child: Text("hi"),

              ),
SizedBox(height: 20,),
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.red,
                child: Text("bye"),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
