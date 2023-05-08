class TicTacToe {
  List<String> displayXO = ['', '', '', '', '', '', '', '', ''];
  int filledBoxes = 0;
  List<int> matchedIndexes = [];
  String resultDeclaration = '';
  int oScore = 0, xScore = 0;
  bool oTurn = true;
  bool winnerFound = false;
  int attempts = 0;
}
