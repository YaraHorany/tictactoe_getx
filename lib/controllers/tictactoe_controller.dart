import 'package:get/get.dart';
import 'package:tictactoe_getx/models/tictactoe.dart';

class TicTacToeController extends GetxController {
  final ticTacToe = TicTacToe().obs;

  void tapped(int index) {
    if (!ticTacToe.value.winnerFound && ticTacToe.value.attempts != 0) {
      if (ticTacToe.value.oTurn && ticTacToe.value.displayXO[index] == '') {
        ticTacToe.update((val) {
          val?.displayXO[index] = 'O';
          val?.filledBoxes++;
          val?.oTurn = !ticTacToe.value.oTurn;
          val?.checkWinner();
        });
      } else if (!ticTacToe.value.oTurn &&
          ticTacToe.value.displayXO[index] == '') {
        ticTacToe.update((val) {
          val?.displayXO[index] = 'X';
          val?.filledBoxes++;
          val?.oTurn = !ticTacToe.value.oTurn;
          val?.checkWinner();
        });
      }
    }
  }

  void clearBoard() {
    ticTacToe.update((val) {
      for (int i = 0; i < 9; i++) {
        val?.displayXO[i] = '';
      }
      val?.filledBoxes = 0;
      val?.matchedIndexes.clear();
      val?.resultDeclaration = '';
      val?.oTurn = true;
      val?.winnerFound = false;
    });
  }

  void updateAttempt() {
    ticTacToe.update((val) {
      val?.attempts++;
    });
  }
}
