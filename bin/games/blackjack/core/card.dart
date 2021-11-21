/*
  1. Create a enum object that holds all the suits available in a typical deck.
  2. Create a class called Suit.
        a)  Create a constructor for this suit. This constructor should set the
            suit value of the class, by using the enum type created in 1.
        b)  Override the toString() method, and based on the suit the class
            was constructed with, return the appropriate string
            '♥', '♠', '♦', '♣'
  3. Create a class called Card.
        a)  Create the following attributes
                int faceValue;
                enumSuits suit;
                bool hide = false;
                Suit _suit;
        b)  Create a constructor for the card, it should accept the integer
            that represents its value from 1-13 and a enum suit (from 1, not 2)
            I.e, it should accept values for faceValue and suit (Not _suit)
        c)  In the function portion of the constructor, make it set the
            _suit attribute to an instance of Suit(suit)
        d)  Create a method for this class, faceToString, that transforms
            the faceValue to the appropriate string. For example,
            faceValue of 11 would give 'J'
            faceValue of 1  would give 'A'
            faceValue of 5  would give '5'
        e)  Create a method called value, which returns the faceValue of the
            card, but capped at 10. So if the card has
            faceValue of 11 -> returns 10
            faceValue of 1  -> return 1
            faceValue of 5  -> return 5
        f)  Override the toString() method and let it return the card value.
            For example ♥A or ♥2 or ♦K etc.
        g)  Adjust the toString() method such that if hide=true, then it
            simply returns a '*'
 */

enum enumSuits {
  heart,
  spade,
  diamond,
  club
}

enum enumCardValue {
  ace,
  two,
  three,
  four,
  five,
  six,
  seven,
  eight,
  nine,
  ten,
  joker,
  queen,
  king
}

class Suit {
  enumSuits suit;
  Suit(this.suit);

  String toString(){
    if(suit == enumSuits.heart){
      return '♥';
    } else if(suit == enumSuits.spade){
      return '♠';
    } else if(suit == enumSuits.diamond){
      return '♦';
    } else if(suit == enumSuits.club){
      return '♣';
    }
  }
}
class Card {

  int faceValue;
  enumSuits suit;
  Suit _suit;
  bool hide = false;

  Card(this.faceValue, this.suit){
    _suit = Suit(suit);
  }

  String faceToString(){
    if(faceValue == 11) {
      return 'J';
    }
    if(faceValue == 12) {
      return 'Q';
    }
    if(faceValue == 13) {
      return 'K';
    }
    if(faceValue == 1) {
      return 'A';
    }
    return faceValue.toString();
  }
  int value() {
    if(faceValue > 10){
      return 10;
    }
    return faceValue;
  }
  @override
  String toString() {
    if(hide){
      return '*';
    }
    return '$_suit${faceToString()}';
  }
}

void main() {

  Card card = Card(13, enumSuits.spade);
  Card card2 = Card(7, enumSuits.spade);
  Card card3 = Card(1, enumSuits.spade);
  card2.hide = true;
  print([card, card2, card3]);

}