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
        drawCards();
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
