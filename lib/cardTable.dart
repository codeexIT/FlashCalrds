import 'package:flutter/material.dart';
import 'reusableCard.dart';
import 'flashcardFactory.dart';

const int activeCard = 0xFFE1E1E1;
const int activeCardReverse = 0xFFBEBEBE;
const int inactiveCard = 0xFFEEEEEE;

FlashcardFactory flashcardFactory = FlashcardFactory();


class CardTable extends StatefulWidget {
  @override
  _CardTableState createState() => _CardTableState();
}

class _CardTableState extends State<CardTable> {

  String textOnTheCard = flashcardFactory.getCardFrontText();
  int colorOnCurrentCard = activeCard;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Stack(
          children: <Widget>[
            GestureDetector(
              onTap: (){
                setState(() {
                  if(textOnTheCard == flashcardFactory.getCardFrontText())
                  {
                    textOnTheCard = flashcardFactory.getCardBackText();
                    colorOnCurrentCard = activeCard;
                  } else {
                    textOnTheCard = flashcardFactory.getCardFrontText();
                    colorOnCurrentCard = activeCardReverse;
                  }
                });
              },
              onDoubleTap: (){
                setState(() {
                  flashcardFactory.nextCard();
                  textOnTheCard = flashcardFactory.getCardFrontText();
                });
              },
              child: ReusableCard(
                frontText: textOnTheCard,
                cardColor: colorOnCurrentCard,
              ),
            ),
          ],
        )
      ],
    );
  }
}
