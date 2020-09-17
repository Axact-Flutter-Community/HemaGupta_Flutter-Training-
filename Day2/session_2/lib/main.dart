import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.tealAccent[700],
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/dolphin.png"),
            ),
            Text(
              "Jenny",
              style: TextStyle(
                  fontSize: 40,
                  fontFamily: "fonts/Ranchers-Regular.ttf",
                  color: Colors.white),
            ),

            Text(
              "Defying looks",
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: "fonts/Ranchers-Regular.ttf",
                  color: Colors.tealAccent[100]),
            ),
            SizedBox(
              height: 20,
              child: Divider(
                color: Colors.black,
              ),
              width: 200,
            ),
            Card(
              child: Padding(padding: EdgeInsets.all(8),
                child: ListTile(
                  leading: Icon(Icons.call),
                  title: Text(
                    "91 9067878788789",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontFamily: "fonts\Ranchers-Regular.ttf"
                    ),
                  ),
                ),
              ),
              margin: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
            ),
            Card(
              child: Padding(padding: EdgeInsets.all(8),
                child: ListTile(
                  leading: Icon(Icons.email),
                  title: Text(
                    "hema@gmail.com",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontFamily: "fonts\Ranchers-Regular.ttf"
                    ),
                  ),
                ),
              ),
              margin: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
            )


          ],
        )));
  }
}
