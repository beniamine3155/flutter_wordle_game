import 'dart:math';

class WorldleGame {
  int rowId = 0;
  int letterId = 0;

  static String game_message = "";
  static String game_guess = "";
  static List<String> worldList = [
    "WORLD",
    "FIGHT",
    "BRAIN",
    "PLANE",
    "EARTH",
    "ROBOT",
    "BLACK",
    "NAHID",
    "ASHIK",
    "TURJA",
    "EASIN",
    
  ];
  static bool game_over = false;

  static List<Letter> wordlerow = List.generate(5, (index) => Letter("", 0));

  List<List<Letter>> wordleBoard =
      List.generate(5, ((index) => List.generate(5, (index) => Letter("", 0))));

  static void initGame() {
    final random = new Random();
    int index = random.nextInt(worldList.length);
    game_guess = worldList[index];
  }

  void insertWord(index, word) {
    wordleBoard[rowId][index] = word;
  }

  bool checkWordExist(String word) {
    return worldList.contains(word);
  }
}

class Letter {
  String? letter;
  int code = 0;
  Letter(this.letter, this.code);
}
