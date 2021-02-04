import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Center(
              child: Text('Ask me'),
            ),
            backgroundColor: Colors.blueAccent,
          ),
          body: AskMePage(),
        ),
      ),
    );

class AskMePage extends StatefulWidget {
  @override
  _AskMePageState createState() => _AskMePageState();
}

class _AskMePageState extends State<AskMePage> {
  int ballNumber = 1;
  void changeTheAnswer() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: changeTheAnswer,
                child: Image.asset('images/ball$ballNumber.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
