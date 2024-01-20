import 'package:flutter/material.dart';

import 'gridview.dart';

void checkWinner(BuildContext context) {
  if (GameState.visibleImage[0] == GameState.visibleImage[4] &&
      GameState.visibleImage[0] == GameState.visibleImage[8] &&
      GameState.visibleImage[0] != null) {
    showDialoge(context);
    GameState.totalcount = 0;
  }

  if (GameState.visibleImage[0] == GameState.visibleImage[3] &&
      GameState.visibleImage[0] == GameState.visibleImage[6] &&
      GameState.visibleImage[0] != null) {
    showDialoge(context);
    GameState.totalcount = 0;
  }

  if (GameState.visibleImage[0] == GameState.visibleImage[1] &&
      GameState.visibleImage[0] == GameState.visibleImage[2] &&
      GameState.visibleImage[0] != null) {
    showDialoge(context);
    GameState.totalcount = 0;
  }

  if (GameState.visibleImage[2] == GameState.visibleImage[5] &&
      GameState.visibleImage[2] == GameState.visibleImage[8] &&
      GameState.visibleImage[2] != null) {
    showDialoge(context);
    GameState.totalcount = 0;
  }

  if (GameState.visibleImage[2] == GameState.visibleImage[4] &&
      GameState.visibleImage[2] == GameState.visibleImage[6] &&
      GameState.visibleImage[2] != null) {
    showDialoge(context);
    GameState.totalcount = 0;
  }

  if (GameState.visibleImage[3] == GameState.visibleImage[4] &&
      GameState.visibleImage[3] == GameState.visibleImage[5] &&
      GameState.visibleImage[3] != null) {
    showDialoge(context);
    GameState.totalcount = 0;
  }

  if (GameState.visibleImage[6] == GameState.visibleImage[7] &&
      GameState.visibleImage[6] == GameState.visibleImage[8] &&
      GameState.visibleImage[6] != null) {
    showDialoge(context);
    GameState.totalcount = 0;
  }

  if (GameState.visibleImage[1] == GameState.visibleImage[4] &&
      GameState.visibleImage[1] == GameState.visibleImage[7] &&
      GameState.visibleImage[1] != null) {
    showDialoge(context);
    GameState.totalcount = 0;
  }
}

void showDialoge(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Title(color: Colors.cyan, child: const Text("game over")),
    ),
  );
}
