import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text("Session2"),
          backgroundColor: Colors.orange[500],
          elevation: 0,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Network Image", style: TextStyle(fontSize: 20.0),),
            Center(
              child: Image(
                image: NetworkImage("https://cdn.pixabay.com/photo/2013/02/09/04/33/sea-79606_1280.jpg"),
              ),
            ),


            Text("Asset Image", style: TextStyle(fontSize: 20.0),),
            Center(
              child: Image(
                 image: AssetImage("assets/headphone.png"),
              ),
            )
          ],
        ),
      )
  ));
}

