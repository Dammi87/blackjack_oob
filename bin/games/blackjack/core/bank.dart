/*
  Create a class called Bank

  1. Give this class these attributes
      int moneyPool = 0;
      int lastBet = 0;

  2. void buyIn()
     Sets the value of moneyPool to the desired buyin (Use QuestionHandler for this)

  3. void bet()
     Asks for the desired bet (use QuestionHandler)
     if the bet is valid (Less than available moneyPool) then set lastBet to this
     value. If not, warn the user and set lastBet to the remaining money.

  4. void lose(), void win(), void draw()
     Update the moneyPool based on all of these (You have the bet amount in the
     lastBet attribute). After updating the moneyPool set the lastBet to 0.

  5. bool broke()
     Return true if all money is gone.

 */
import 'question_handler.dart';

class Bank {


}