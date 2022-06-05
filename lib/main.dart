import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blue[900],
        ),
        body: BallGame(),
      ),
    ),
  );
}

class BallGame extends StatefulWidget {
  @override
  State<BallGame> createState() => _BallGameState();
}

class _BallGameState extends State<BallGame> {
  int PleaseInputAQuestion =1;
  void QuestionTime(){
    setState((){
      PleaseInputAQuestion=Random().nextInt(5)+1;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              child: Image.asset('images/ball$PleaseInputAQuestion.png'),
              onPressed: () {
                QuestionTime();
              },
            ),
          ),
        ],
      ),
    );
  }
}
