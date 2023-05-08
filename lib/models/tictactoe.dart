class TicTacToe {
  List<String> displayXO = ['', '', '', '', '', '', '', '', ''];
  int filledBoxes = 0;
  List<int> matchedIndexes = [];
  String resultDeclaration = '';
  int oScore = 0, xScore = 0;
  bool oTurn = true;
  bool winnerFound = false;
  int attempts = 0;

  void checkWinner() {
    // check 1st row
    if (displayXO[0] == displayXO[1] &&
        displayXO[1] == displayXO[2] &&
        displayXO[0] != '') {
      resultDeclaration = 'Player ${displayXO[0]} Wins!';
      matchedIndexes.addAll([0, 1, 2]);
      _updateScore(displayXO[0]);
    }
    // check 2nd row
    if (displayXO[3] == displayXO[4] &&
        displayXO[4] == displayXO[5] &&
        displayXO[3] != '') {
      resultDeclaration = 'Player ${displayXO[3]} Wins!';
      matchedIndexes.addAll([3, 4, 5]);
      _updateScore(displayXO[3]);
    }
    // check 3rd row
    if (displayXO[6] == displayXO[7] &&
        displayXO[7] == displayXO[8] &&
        displayXO[6] != '') {
      resultDeclaration = 'Player ${displayXO[6]} Wins!';
      matchedIndexes.addAll([6, 7, 8]);
      _updateScore(displayXO[6]);
    }
    // check 1as column
    if (displayXO[0] == displayXO[3] &&
        displayXO[3] == displayXO[6] &&
        displayXO[0] != '') {
      resultDeclaration = 'Player ${displayXO[0]} Wins!';
      matchedIndexes.addAll([0, 3, 6]);
      _updateScore(displayXO[0]);
    }
    // check 2nd column
    if (displayXO[1] == displayXO[4] &&
        displayXO[4] == displayXO[7] &&
        displayXO[1] != '') {
      resultDeclaration = 'Player ${displayXO[1]} Wins!';
      matchedIndexes.addAll([1, 4, 7]);
      _updateScore(displayXO[1]);
    }
    // check 3rd column
    if (displayXO[2] == displayXO[5] &&
        displayXO[5] == displayXO[8] &&
        displayXO[2] != '') {
      resultDeclaration = 'Player ${displayXO[2]} Wins!';
      matchedIndexes.addAll([2, 5, 8]);
      _updateScore(displayXO[2]);
    }
    // check diagonal
    if (displayXO[0] == displayXO[4] &&
        displayXO[4] == displayXO[8] &&
        displayXO[0] != '') {
      resultDeclaration = 'Player ${displayXO[0]} Wins!';
      matchedIndexes.addAll([0, 4, 8]);
      _updateScore(displayXO[0]);
    }
    // check diagonal
    if (displayXO[2] == displayXO[4] &&
        displayXO[4] == displayXO[6] &&
        displayXO[2] != '') {
      resultDeclaration = 'Player ${displayXO[6]} Wins!';
      matchedIndexes.addAll([2, 4, 6]);
      // _updateScore(displayXO[6]);
    }
    if (!winnerFound && filledBoxes == 9) {
      resultDeclaration = 'Nobody wins!';
    }
  }

  void _updateScore(String winner) {
    if (winner == 'O') {
      oScore++;
    } else if (winner == 'X') {
      xScore++;
    }
    winnerFound = true;
  }
}
