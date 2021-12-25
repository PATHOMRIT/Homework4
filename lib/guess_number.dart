// ignore_for_file: avoid_print

import 'dart:io';


import 'package:guess_number/game.dart';



void main() {
  var playAgain = true;
  do {
    playGame();
    var YesorNo = false;
    do {
      print('Play again? (Y/N) : ');
      var Contiguess = stdin.readLineSync();
      if (Contiguess == 'Y' || Contiguess == 'y' || Contiguess == 'N' || Contiguess == 'n') {
        YesorNo = true;
        if (Contiguess == 'N' || Contiguess == 'n') {
          playAgain = false;
          print('║                 THANK YOU              ');
          print('╚════════════════════════════════════════');
        }
      }
    }while(!YesorNo);
  }while(playAgain);
}
void playGame(){
  var isCorrect = false;
  var game = Game();
  print('╔════════════════════════════════════════');
  print('║            GUESS THE NUMBER            ');
  print('╟────────────────────────────────────────');

  do {
    int maxRandom = game.getmaxRandom();
    stdout.write('║ Guess the number between 1 and $maxRandom: ');
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);
    if (guess == null) {
      continue;
    }

    var result = game.doGuess(guess);
    var Count = game.getdoCount();
    if (result == 1) {
      print('║ ➜ $guess is TOO HIGH! ▲');
      print('╟────────────────────────────────────────');
    } else if (result == -1) {
      print('║ ➜ $guess is TOO LOW! ▼');
      print('╟────────────────────────────────────────');
    } else {
      print('║ ➜ $guess is CORRECT ❤, total guesses: $Count');
      print('╟────────────────────────────────────────');
      isCorrect = true;
    }
  } while (!isCorrect);

  print('║                 THE END                ');
  print('╚════════════════════════════════════════');
}