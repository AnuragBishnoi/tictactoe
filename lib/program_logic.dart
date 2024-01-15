import 'dart:ffi';

import 'package:flutter/material.dart';

class Game extends StatefulWidget {
  const Game({super.key});

  @override
  State<Game> createState() => _GameState();
}

int counter = 0;
List<int> num =[0,0,0,0,0,0,0,0,0];
Image ximage = const Image(image: AssetImage("assets/x.png"));
Image oimage = const Image(image: AssetImage("assets/o.png"));
Image? visibleImage;
void _ontapped(int index) {
  if (num[index] == 0) {
    num[index] = 1;
    visibleImage = ximage;
  }
  if (num[index] == 0) {
    num[index] = 1;
    visibleImage = oimage;
  }
  }

/*TextEditingController? controller1;
TextEditingController? controller2;
TextEditingController? controller3;
TextEditingController? controller4;
TextEditingController? controller5;
TextEditingController? controller6;
TextEditingController? controller7;
TextEditingController? controller8;
TextEditingController? controller9;*/

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
            child: ,
          ),onTap: _ontapped(index),
        );
      },
      itemCount: 9,
    );
  }
}
