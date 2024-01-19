import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'program_logic.dart';

class Logic2 extends StatelessWidget {
  const Logic2({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Title(
          color: Colors.cyan,
          child: Row(
            children: [Text("game over")],
          )),
    );
  }
}

GameState obj = GameState();

void logic() {
  if (GameState.visibleImage[0] == GameState.replacementImage[4] &&
      GameState.visibleImage[4] == GameState.visibleImage[8]) {
    const Logic2();
    obj.totalcount = 0;
  }

  if (GameState.visibleImage[0] == GameState.replacementImage[3] &&
      GameState.visibleImage[3] == GameState.visibleImage[6]) {
    const Logic2();
    obj.totalcount = 0;
  }

  if (GameState.visibleImage[0] == GameState.replacementImage[1] &&
      GameState.visibleImage[1] == GameState.visibleImage[2]) {
    const Logic2();
    obj.totalcount = 0;
  }

  if (GameState.visibleImage[2] == GameState.replacementImage[5] &&
      GameState.visibleImage[5] == GameState.visibleImage[8]) {
    const Logic2();
    obj.totalcount = 0;
  }

  if (GameState.visibleImage[2] == GameState.replacementImage[4] &&
      GameState.visibleImage[4] == GameState.visibleImage[6]) {
    const Logic2();
    obj.totalcount = 0;
  }

  if (GameState.visibleImage[6] == GameState.replacementImage[7] &&
      GameState.visibleImage[7] == GameState.visibleImage[8]) {
    const Logic2();
    obj.totalcount = 0;
  }
}
