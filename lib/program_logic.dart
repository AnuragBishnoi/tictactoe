import 'package:flutter/material.dart';

class Game extends StatefulWidget {
  const Game({super.key});

  @override
  State<Game> createState() => _GameState();
}

List<String> num = [];
TextEditingController? controller1;
TextEditingController? controller2;
TextEditingController? controller3;
TextEditingController? controller4;
TextEditingController? controller5;
TextEditingController? controller6;
TextEditingController? controller7;
TextEditingController? controller8;
TextEditingController? controller9;

class _GameState extends State<Game> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(50),
      child: GridView.count(
        crossAxisCount: 5,
        crossAxisSpacing: 10,
        mainAxisSpacing: 5,
        children: <Widget>[
          TextField(
            onSubmitted: (value) {
              num[0] = value;
            },
          ),
          const Text(
            "|",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 400, overflow: TextOverflow.visible),
          ),
          TextField(
            onSubmitted: (value) {
              num[0] = value;
            },
          ),
          const Text(
            "|",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 57),
          ),
          TextField(
            onSubmitted: (value) {
              num[0] = value;
            },
          ),
          TextField(
            onSubmitted: (value) {
              num[0] = value;
            },
          ),
          const Text(
            "|",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 400, overflow: TextOverflow.visible),
          ),
          TextField(
            onSubmitted: (value) {
              num[0] = value;
            },
          ),
          const Text("|"),
          TextField(
            onSubmitted: (value) {
              num[0] = value;
            },
          ),
          TextField(
            onSubmitted: (value) {
              num[0] = value;
            },
          ),
          const Text("|"),
          TextField(
            onSubmitted: (value) {
              num[0] = value;
            },
          ),
          const Text("|"),
          TextField(
            onSubmitted: (value) {
              num[0] = value;
            },
          ),
        ],
      ),
    );
  }
}
