import 'card.dart';

List<Card> createShuffledDeck() {
  // Initialize empty container
  List<Card> cards = [];
  for(enumSuits suit in enumSuits.values){
    for(int cardValue=1; cardValue<=13; cardValue++){
      cards.add(Card(cardValue, suit));
    }
  }
  // Shuffle cards
  cards.shuffle();
  return cards;
}


class Deck {
  // Shuffled deck of cards
  List<Card> _cards = createShuffledDeck();

  Card drawCard(){
    // Draw a single card from the top of the deck
    return _cards.removeAt(0);
  }

  void returnCard(Card card){
    _cards.add(card);
  }

  void returnCards(List<Card> cards){
    _cards.addAll(cards);
    cards = [];
  }

  void shuffle(){
    _cards.shuffle();
  }

}