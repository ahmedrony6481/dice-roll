import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DiceApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class DiceApp extends StatefulWidget {
  const DiceApp({Key? key}) : super(key: key);

  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int diceNumber=1;
  void rollDice(){
    Random random = new Random();

    setState(() {
      diceNumber = 1 + random.nextInt(6);
    });
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.tealAccent,
          title: Text('Dice Roll',style: TextStyle(fontWeight: FontWeight.w900,color: Colors.white),),
          centerTitle: true,
        ),
        body: Container(
          child: Center(
            child: (
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage('a/abc.png'),
                  height: 200,
                  width: 200,
                ),
                Text('Your number is: $diceNumber', style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 32,
                ),),
                Container(
                  margin: EdgeInsets.only(top: 16),
                  child: RaisedButton(
                    onPressed: rollDice,
                    child: Text('Roll The Dice'),
                    color: Colors.amber,
                  ),
                )
              ],
            )
            ),
          ),
        ),
      ),
    );
  }
}

