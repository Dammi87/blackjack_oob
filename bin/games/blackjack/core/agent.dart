import 'card.dart';
import 'deck.dart';


class Agent {
  Deck deck;
  List<Card> hand;
  String name;

  Agent({String name, Deck deck}){
    this.deck = deck;
    this.hand = [];
    this.name = name;
  }

  void drawCards({int amount = 1}){
    for(int idx=0; idx<amount; idx++){
      hand.add(deck.drawCard());
    }
    // Sorts the card from small to large
    hand.sort((a, b) => b.faceValue.compareTo(a.faceValue));
  }

  void returnCards(){
    deck.returnCards(hand);
  }

  String currentHand(){
    return hand.join(',');
  }

  int handValue(){
    int points = 0;
    for(Card card in hand){
      if(card.value() != 1) {
        points += card.value();
      } else {
        // Card is Ace
        if(points + 11 > 21){
          points += 1;
        } else {
          points += 11;
        }
      }
    }

    return points;
  }

  void info(){
    print('$name, you currently have ${currentHand()} with a value of ${handValue()}');
  }

  bool bust() {
    return handValue() > 21;
  }

}
