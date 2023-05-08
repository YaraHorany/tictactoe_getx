import 'package:get/get.dart';
import 'package:tictactoe_getx/models/tictactoe.dart';

class TicTacToeController extends GetxController {
  final ticTacToe = TicTacToe().obs;

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
}
