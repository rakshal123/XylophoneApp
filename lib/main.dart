import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
void main() {
  runApp(music());
}
class music extends StatelessWidget {
  const music({Key key}) : super(key: key);
  Expanded func(int number,color)
  {
    return Expanded(
      child: TextButton(
        onPressed: (){
          playSound(number);
        },
        child: Container(
          color: color),
      ),
    );
  }
  void playSound(int soundnumber){
    final player = AudioCache();
    player.play('note$soundnumber.wav');
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              func(1,Colors.red),
              func(2,Colors.orange),
              func(3,Colors.yellow),
              func(4,Colors.teal),
              func(5,Colors.green),
              func(6,Colors.blue),
              func(7,Colors.purple),
              Container(
                width: double.infinity,
              ),
            ],
          ),
        ),
      ),
    );
  }
}




