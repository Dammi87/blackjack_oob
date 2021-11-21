/*
  1. Create the constructor for this class, it should accept a name and deck.
     But in the constructor, set the this.hand = [].

  2. Create void drawCard()
     It should draw a card from the deck attribute, and add it to the
     hand list.

  3. void returnCards()
     This method should return all cards from the hand to the deck (check the
     methods from the deck)

  4. String currentHand()
     Return the current hand, like ♥A,♥2,♦K (Use the fact that Card now has
     a toString() method!).

  5. int handValue()
     Calculates the total value of the hand. You can try to be smart and make
     the method calculate the maximum value (like, not busting by setting
     the ace as 1 instead of 11) etc.

  6. void info()
     Print the name, current hand and handvalue to the terminal.

  7.  bool bust()
      Returns true if handValue() is larger than 21.

*/


import 'card.dart';
import 'deck.dart';


class Agent {
  Deck deck;
  List<Card> hand;
  String name;

}
