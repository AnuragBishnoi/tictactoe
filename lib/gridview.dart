import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tictactoe/winner_check.dart';

class Game extends StatefulWidget {
  const Game({super.key});

  @override
  State<Game> createState() => GameState();
}

class GameState extends State<Game> {
  int turn = 0;
  static int totalcount = 0;
  static Image ximage = const Image(image: AssetImage("assets/pikachu.png"));
  static Image oimage = const Image(image: AssetImage("assets/shinchan.png"));

  final player1 = AudioPlayer();
  final player2 = AudioPlayer();

  static List<Image?> visibleImage = List<Image?>.filled(9, null);
  static List<Image?> replacementImage = List<Image?>.filled(9, null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/wood board.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                ontapped(index);
              },
              child: Container(
                decoration: BoxDecoration(border: Border.all()),
                child: visibleImage[index],
              ),
            );
          },
          itemCount: 9,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            visibleImage.setAll(0, replacementImage);
          });
          totalcount = 0;
        },
        backgroundColor: Colors.orange[900],
        child: const Icon(Icons.refresh_outlined),
      ),
    );
  }

  void ontapped(int index) async {
    setState(() {
      if (turn == 0 && visibleImage[index] == null) {
        visibleImage[index] = ximage;
        player1.play(AssetSource("pikachu.mp3"));
        turn = 1;
        totalcount++;
      }

      if (turn == 1 && visibleImage[index] == null) {
        visibleImage[index] = oimage;
        player2.play(AssetSource("shinchan_ooh.mp3"));
        turn = 0;
        totalcount++;
      }
      if (totalcount >= 5) checkWinner(context);
    });
  }
}
