import 'package:flutter/material.dart';
import 'dart:math';

class ReusableCard extends StatelessWidget {
  ReusableCard(
      {required this.frontText,
      required this.cardColor,
      });

  final String frontText;
  final int cardColor;

  double rotateCard() => Random().nextDouble() * (-0.74) + 0.37;

  @override
  Widget build(BuildContext context) {
    return Transform(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 1.0),
          borderRadius: BorderRadius.circular(30),
          color: Color(cardColor),
        ),
        margin: EdgeInsets.symmetric(horizontal: 30.0),
        height: 200.0,
        width: double.infinity,
        child: Center(
          child: Text(
            frontText,
            style: TextStyle(
              fontSize: 30.0,
            ),
          ),
        ),
      ),
      alignment: FractionalOffset.center,
      transform: Matrix4.rotationZ(0),
    );
  }
}
