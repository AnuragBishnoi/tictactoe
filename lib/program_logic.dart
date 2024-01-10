import 'package:flutter/material.dart';

class Game extends StatefulWidget {
  const Game({super.key});

  @override
  State<Game> createState() => _GameState();
}

List<String> num = [];
TextEditingController? controller1;
//TextEditingController ?controller1;
//TextEditingController ?controller1;

class _GameState extends State<Game> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(50),
      child: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 20,
        children: <Widget>[
          Container(
            child: TextField(),
          ),
          Container(
            child: TextButton(
              onPressed: () {},
              child: Text("1"),
            ),
          ),
          Container(
            child: TextButton(
              onPressed: () {},
              child: Text("1"),
            ),
          ),
          Container(
            child: TextButton(
              onPressed: () {},
              child: Text("1"),
            ),
          ),
          Container(
            child: TextButton(
              onPressed: () {},
              child: Text("1"),
            ),
          ),
          Container(
            child: TextButton(
              onPressed: () {},
              child: Text("1"),
            ),
          ),
          Container(
            child: TextButton(
              onPressed: () {},
              child: Text("1"),
            ),
          ),
          Container(
            child: TextButton(
              onPressed: () {},
              child: Text("1"),
            ),
          ),
          Container(
            child: TextButton(
              onPressed: () {},
              child: Text("1"),
            ),
          ),
        ],
      ),
    );
  }
}
