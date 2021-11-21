import 'dart:io';
import 'question_handler.dart';

class Bank {

  final int amount = 0;

  int moneyPool = 0;
  int lastBet = 0;

  void buyIn(){
    moneyPool = QuestionHandler().amount('How much would you like to buy in for? ');
  }

  void bet(){
    int chosenBet = QuestionHandler().amount('How much would you like to bet for? ');

    if(chosenBet <= moneyPool){
      lastBet = chosenBet;
    } else {
      print('You only have $moneyPool left.');
      print('Bet set at $moneyPool');
      lastBet = moneyPool;
    }
  }

  void lose(){
    moneyPool -= lastBet;
    lastBet = 0;
  }

  void win(){
    moneyPool += 2*lastBet;
    lastBet = 0;
  }

  void draw(){
    lastBet = 0;
  }

  bool broke(){
    return moneyPool <= 0;
  }

}