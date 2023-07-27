import 'package:flutter/material.dart';
import 'package:wordle_game/game_keyboard.dart';
import 'package:wordle_game/game_provider.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {

  WorldleGame _game = WorldleGame();


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WorldleGame.initGame();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Wordle",
            style: TextStyle(
                color: Colors.white, fontSize: 36, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          GameKeyboard(_game),
        ],
      ),
    );
  }
}
