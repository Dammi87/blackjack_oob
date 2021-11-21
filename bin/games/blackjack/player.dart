import 'core/core.dart';


class Player extends Agent {

  Player({String name, Deck deck}) : super(name: name, deck: deck);
  Bank bank = Bank();

  void performTurn() {
    while(true){
      info();
      bool ans = QuestionHandler().YesOrNo('Another card ? ');
      if(ans){
        drawCards();
      } else {
        break;
      }
      if(handValue() > 21){
        info();
        print('You busted!');
        break;
      }
    }
  }

}

void main() {

  Player player = Player(name: 'Adam', deck: Deck());
  player.drawCards(amount: 2);
  player.info();
}