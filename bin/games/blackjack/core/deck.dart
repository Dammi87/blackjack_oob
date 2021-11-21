/*
  1. Create a function that returns a complete, shuffled deck of cards of all
     suits. You can use the following for loop to loop through enum values

     for(enumSuits suit in enumSuits.values){
          <YOUR CODE HERE>
     }

  2. Create a class called Deck. It does not need a constructor, but should have
     an attribute a List<Card> _cards which has its value set to the output
     from the function in 1)


  3. In the class, create these methods

     a) Card drawCard()
        REMOVES the first card from the _card and returns it
     b) void returnCard(Card card)
        Adds the given card to the back of the _deck
     c) void returnCards(List<Card> cards)
        Adds the given cards to the back of the _deck
     d) void shuffle()
        ...shuffles... :D

 */

import 'card.dart';

List<Card> createShuffledDeck() {
  List<Card> cards = [];
  for (int i = 0; i < 4; i++) {
    for (int j = 1; j < 14; j++) {
      Card c = Card(j, enumSuits.values[i]);
      cards.add(c);
    }
  }
  cards.shuffle();
  return cards;
}

class Deck {
  List<Card> _cards = createShuffledDeck();

}

void main() {
  Deck deck = Deck();
  print(deck._cards);
}