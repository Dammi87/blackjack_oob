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
    // Setup player and dealer objects

    // Initialize
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


  }

  void endTurn() {

  }

  void initializeTurn() {

  }

}


void main() {
  BlackJack black_jack = BlackJack();
  black_jack.start();
}
