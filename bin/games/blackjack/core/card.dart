enum enumSuits {
  heart,
  spade,
  diamond,
  club
}

class Suit {
  final enumSuits type;
  Suit(this.type);

  @override
  String toString(){
    switch(type){
      case enumSuits.heart: {
        return '♥';
      }
      case enumSuits.spade: {
        return '♠';
      }
      case enumSuits.diamond: {
        return '♦';
      }
      case enumSuits.club: {
        return '♣';
      }
    }
  }
}

class Card {
  final int faceValue;
  final enumSuits suit;
  bool hide = false;
  Suit _suit;

  Card(this.faceValue, this.suit) {
    _suit = Suit(suit);
  }

  int value(){
    if(faceValue > 10){
      return 10;
    } else {
      return faceValue;
    }
  }

  @override
  String toString() {
    if(hide){
      return '*';
    }
    return _suit.toString() + faceToString();
  }

  String faceToString(){

    switch(faceValue){
      case 1: {
        return 'A';
      }
      case 11: {
        return 'J';
      }
      case 12: {
        return 'Q';
      }
      case 13: {
        return 'K';
      }
      default:
        return '$faceValue';
    }
  }
}
