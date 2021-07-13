import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {

  ReusableCard({required this.frontText, required this.backText, required this.rotationAngel, required this.cardColor});

  final String frontText;
  final String backText;
  final double rotationAngel;
  final int cardColor;

  @override
  Widget build(BuildContext context) {
    return Transform(
      child: GestureDetector(
        onTap: (){

        },
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: 1.0
            ),
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
      ),
      alignment: FractionalOffset.center,
      transform: Matrix4.rotationZ(rotationAngel),
    );
  }
}
