/*
  Similar to player, make the Dealer class extend the Agent

  1. Create the constructor
  2. Create two methods, hide() and reveal().
     a) Hide
        Loop through all cards in the hand, and hide all cards EXCEPT the
        first card. (Set the hide attribute of the card to true)
     b) Reveal
        Loop through all cards in the hand, and reveal all cards
  3. Create method void partialInfo()
     In the beginning of the game, we are only allowed to see the card
     hand of the dealer and not the points, so we need partialInfo() which
     only states the hand of the dealer
  4. void performTurn()
     IN a while loop:
      a) Draw cards while the value of the hand is less than 17
      b) otherwise break
      c) Check for bust after card drawn, break if busted

 */
import 'core/core.dart';


class Dealer extends Agent {

  Dealer({String name, Deck deck}) : super(name: name, deck: deck);

  void hide(){
    for(int idx = 1; idx < hand.length; idx++){
      hand[idx].hide = true;
    }
  }

  void reveal(){
    for(Card card in hand){
      card.hide = false;
    }
  }

  void partialInfo() {
    print('Dealer has ${currentHand()}');
  }

  void performTurn() {

    while(true){
      info();

      if(handValue() < 17){
        drawCard();
      } else {
        break;
      }
      if(handValue() > 21){
        print('Dealer busted!');
        info();
        break;
      }
    }
  }

}
