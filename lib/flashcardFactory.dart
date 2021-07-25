import 'flashcard.dart';
class FlashcardFactory {

    int cardNumber = 0;

   List<Flashcard> flashcardBank = [
     Flashcard(frontText: "Hello", backText: "Hola"),
     Flashcard(frontText: "Goodbye", backText: "Adiós"),
     Flashcard(frontText: "Please", backText: "Por favor"),
     Flashcard(frontText: "Thank you", backText: "Gracias"),
     Flashcard(frontText: "Sorry", backText: "Lo siento"),
     Flashcard(frontText: "Bless you", backText: "Salud"),
     Flashcard(frontText: "Yes", backText: "Sí"),
     Flashcard(frontText: "No", backText: "No"),
   ];

   String getCardFrontText() => flashcardBank[cardNumber].frontText;
   String getCardBackText() => flashcardBank[cardNumber].backText;
   void nextCard(){cardNumber++;}

}