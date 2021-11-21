/*
  Create a class called QuestionHandler

  1. Create the method bool YesOrNo(String question)
     It should print the question, then verify if either yes/no has been given.
     returns true/false as expected.

  2. Create the method int amount(String question)
     Asks the questions, parses the users input as a number. Catch any exceptions
     and ask again if problems arise. Return amount.

 */

import 'dart:io';

class QuestionHandler {

  bool YesOrNo(String question) {
    while (true) {
      stdout.write(question);
      try {
        String ans = stdin.readLineSync().toLowerCase();
        if (ans[0] == 'n') {
          return false;
        } else if (ans[0] == 'y') {
          return true;
        } else {
          print('Please input either y or n');
        }
      } on FormatException {
        {
          print('Please input either y or n');
        }
      }
    }
  }

  int amount(String question){
    while (true) {
      stdout.write(question);
      try {
        int ans = int.parse(stdin.readLineSync().toLowerCase());
        return ans;
      } on FormatException {
        {
          print('Please input a valid number.');
        }
      }
    }
  }

}

