import 'package:flutter/material.dart';
import 'reusableCard.dart';

class CardCanvas extends StatefulWidget {
  @override
  _CardCanvasState createState() => _CardCanvasState();
}

class _CardCanvasState extends State<CardCanvas> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Stack(
            children: <Widget>[
              ReusableCard(frontText: "Test8",backText: "Test7", rotationAngel: -0.37, cardColor: 0xFFEEEEEE,),
              ReusableCard(frontText: "Test4",backText: "Test3", rotationAngel: 0.010, cardColor: 0xFFEEEEEE,),
              ReusableCard(frontText: "Test1",backText: "Test2", rotationAngel: 0.13, cardColor: 0xFFE1E1E1,),
            ],
        )
      ],
    );
  }
}
