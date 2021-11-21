

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

