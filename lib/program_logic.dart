import 'package:flutter/material.dart';
import 'package:tictactoe/logic2.dart';

class Game extends StatefulWidget {
  const Game({super.key});

  @override
  State<Game> createState() => GameState();
}

class GameState extends State<Game> {
  int turn = 0;
  int totalcount = 0;
  Image ximage = const Image(image: AssetImage("assets/x.png"));
  Image oimage = const Image(image: AssetImage("assets/o.png"));

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
                child: Container(
                  decoration: BoxDecoration(border: Border.all()),
                  child: visibleImage[index],
                ),
                onTap: () {
                  ontapped(index);
                });
          },
          itemCount: 9,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            visibleImage.setAll(0, replacementImage);
          });
        },
        backgroundColor: Colors.orange[900],
        child: const Icon(Icons.refresh_outlined),
      ),
    );
  }

  void ontapped(int index) {
    if (totalcount >= 5) {
      logic();
    }
    if (turn == 0 && visibleImage[index] == null) {
      setState(() {
        visibleImage[index] = ximage;
        turn = 1;
        totalcount++;
      });
    }
    if (turn == 1 && visibleImage[index] == null) {
      setState(() {
        visibleImage[index] = oimage;
        turn = 0;
        totalcount++;
      });
    }
  }
}
