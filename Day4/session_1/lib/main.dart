import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
void playSound(int soundNumber){
  final player = AudioCache();
  player.play('note$soundNumber.wav');
}

Expanded buildKey({Color color, int soundNumber}){
  return Expanded(
      child: FlatButton(
        onPressed: (){
          playSound(soundNumber);
        },
        color: color,
      )
  );
}


class Home extends StatefulWidget {





  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("music"),

      ),
      body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color:Colors.red, soundNumber: 1),
              buildKey(color:Colors.yellow,soundNumber: 2),
              buildKey(color: Colors.pink, soundNumber: 3),
              buildKey(color:Colors.blue,soundNumber: 4),
              buildKey(color: Colors.purple, soundNumber: 5),
              buildKey(color:Colors.orange,soundNumber: 6),
              buildKey(color: Colors.indigo,soundNumber: 7),
            ],
          )
      ),

    );
  }
}




