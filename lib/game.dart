import 'dart:math';

class Game {
  static const maxRandom = 100;
  int? _answer;
  var countNum = 0;
  Game() {
    var r = Random();
    _answer = r.nextInt(maxRandom) + 1;
  }
  int doGuess(int num) {
    doCount();
    if (num > _answer!) {
      return 1;
    } else if (num < _answer!) {
      return -1;
    } else {
      return 0;
    }
  }
  getmaxRandom() {
    return maxRandom;
  }
  doCount() {
    countNum++;
  }
  int getdoCount() {
    return countNum;
  }
}
