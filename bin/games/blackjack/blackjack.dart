import 'dart:io';
import 'core/core.dart';
import 'dealer.dart';
import 'player.dart';

class BlackJack {
  Deck deck = Deck();
  bool isInitialized = false;

  Player player;
  Dealer dealer;

  void initializeGame() {
    stdout.write('What is your name? ');
    String name = stdin.readLineSync();

    player = Player(name: name, deck: deck);
    dealer = Dealer(name: 'Dealer', deck: deck);

    // Initialize
    player.bank.buyIn();
    isInitialized = true;
  }

  void reset() {
    isInitialized = false;
    deck = Deck();
  }

  void start() {
    if(!isInitialized){
      initializeGame();
    }

    while(!player.bank.broke()){
      initializeTurn();
      dealer.hide();
      dealer.partialInfo();
      player.performTurn();
      if(player.bust()){
        print('Dealer wins..');
        player.bank.lose();
        continue;
      }

      // Dealer performs turn
      dealer.reveal();
      dealer.performTurn();

      if(dealer.bust()){
        print('Player wins');
        player.bank.win();
        continue;
      }

      if(dealer.handValue() > player.handValue()){
        print('Dealer wins..');
        player.bank.lose();
      } else if (dealer.handValue() < player.handValue()){
        print('Player wins');
        player.bank.win();
      } else {
        print('Draw');
        player.bank.draw();
      }

      // All end
      endTurn();

    }
  }

  void endTurn() {
    player.returnCards();
    dealer.returnCards();
  }

  void initializeTurn() {
    player.bank.bet();
    player.drawCards();
    dealer.drawCards();
    player.drawCards();
    dealer.drawCards();
  }

}


void main() {
  BlackJack bj = BlackJack();
  bj.start();
}
