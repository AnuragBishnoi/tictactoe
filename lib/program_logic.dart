import 'package:flutter/material.dart';

class Game extends StatefulWidget {
  const Game({super.key});

  @override
  State<Game> createState() => _GameState();
}

int turn = 0;
List<int> num = [0, 0, 0, 0, 0, 0, 0, 0, 0];
Image ximage = const Image(image: AssetImage("assets/x.png"));
Image oimage = const Image(image: AssetImage("assets/o.png"));
Image? visibleImage;

class _GameState extends State<Game> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return GestureDetector(
            child: Container(
              decoration: BoxDecoration(border: Border.all()),
              child: visibleImage,
            ),
            onTap: () {
              ontapped(index);
            });
      },
      itemCount: 9,
    );
  }

  void ontapped(int index) {
    if (turn == 0 && num[index] == 0) {
      setState(() {
        num[index] = 1;
        visibleImage = ximage;
        turn = 1;
      });
    }
    if (turn == 1 && num[index] == 0) {
      setState(() {
        num[index] = 2;
        visibleImage = oimage;
        turn = 0;
      });
    }
  }
}
