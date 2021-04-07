import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(
    MaterialApp(home: Scaffold(backgroundColor: Colors.black, body: SafeArea(child: MyApp()))));

class MyApp extends StatelessWidget {
  Expanded strap({Color color, int n}) {
   return Expanded(
      child: FlatButton(
        onPressed: (){
          final player=  AudioCache();
          player.play('note$n.wav');
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        strap(color: Colors.red, n: 1),
        strap(color: Colors.indigo, n: 2),
        strap(color: Colors.blue, n: 3),
        strap(color: Colors.green, n: 4),
        strap(color: Colors.yellow, n: 5),
        strap(color: Colors.orange, n: 6),
        strap(color: Colors.red, n: 7),
      ],
    );
  }
}
