/*
  Now we can start creating our player.

  1.  Make the player Class extend the Agent class.
  2. Create the constructor such that you call the super() constructor of the
     agent class.
  3. Add an attribute "bank" of type Bank, initialize as Bank()
  4. Create method void performTurn()
     It should perform a typical turn of a player (assume the bet has already
     happened), this should be in a while loop
     a) Turn is show info()
     b) Ask if another card should be drawn (QuestionHandler)
     c) if Yes, draw a card, otherwise break the loop.
     d) Check if the value of the hand exceeds 21, then print info(), tell
        him he busted and break the loop.

 */
import 'core/core.dart';


class Player extends Agent {

}
