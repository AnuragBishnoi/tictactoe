import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import 'gridview.dart';

final player3 = AudioPlayer();
final player4 = AudioPlayer();
void checkWinner(BuildContext context) {
  if (GameState.visibleImage[0] == GameState.visibleImage[4] &&
      GameState.visibleImage[0] == GameState.visibleImage[8] &&
      GameState.visibleImage[0] != null) {
    showDialoge(context, GameState.visibleImage[0]);

    GameState.totalcount = 0;
  }

  if (GameState.visibleImage[0] == GameState.visibleImage[3] &&
      GameState.visibleImage[0] == GameState.visibleImage[6] &&
      GameState.visibleImage[0] != null) {
    showDialoge(context, GameState.visibleImage[0]);
    GameState.totalcount = 0;
  }

  if (GameState.visibleImage[0] == GameState.visibleImage[1] &&
      GameState.visibleImage[0] == GameState.visibleImage[2] &&
      GameState.visibleImage[0] != null) {
    showDialoge(context, GameState.visibleImage[0]);
    GameState.totalcount = 0;
  }

  if (GameState.visibleImage[2] == GameState.visibleImage[5] &&
      GameState.visibleImage[2] == GameState.visibleImage[8] &&
      GameState.visibleImage[2] != null) {
    showDialoge(context, GameState.visibleImage[2]);
    GameState.totalcount = 0;
  }

  if (GameState.visibleImage[2] == GameState.visibleImage[4] &&
      GameState.visibleImage[2] == GameState.visibleImage[6] &&
      GameState.visibleImage[2] != null) {
    showDialoge(context, GameState.visibleImage[2]);
    GameState.totalcount = 0;
  }

  if (GameState.visibleImage[3] == GameState.visibleImage[4] &&
      GameState.visibleImage[3] == GameState.visibleImage[5] &&
      GameState.visibleImage[3] != null) {
    showDialoge(context, GameState.visibleImage[3]);
    GameState.totalcount = 0;
  }

  if (GameState.visibleImage[6] == GameState.visibleImage[7] &&
      GameState.visibleImage[6] == GameState.visibleImage[8] &&
      GameState.visibleImage[6] != null) {
    showDialoge(context, GameState.visibleImage[6]);
    GameState.totalcount = 0;
  }

  if (GameState.visibleImage[1] == GameState.visibleImage[4] &&
      GameState.visibleImage[1] == GameState.visibleImage[7] &&
      GameState.visibleImage[1] != null) {
    showDialoge(context, GameState.visibleImage[1]);
    GameState.totalcount = 0;
  }
}

void showDialoge(BuildContext context, Image? myimage) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      content: Row(
        children: [
          CircleAvatar(backgroundImage: myimage!.image, radius: 50),
          const Text("   Wins")
        ],
      ),
    ),
  );
  if (myimage == GameState.ximage) {
    player3.play(AssetSource("pi_pikachu.mp3"));
  } else {
    player4.play(AssetSource("balle_balle_shinchan.mp3"));
    GameState.visibleImage.setAll(0, GameState.replacementImage);
  }
}
