import 'package:flutter/material.dart';

class Game extends StatefulWidget {
  const Game({super.key});

  @override
  State<Game> createState() => _GameState();
}

List<String> num = [];
Image ximage = const Image(image: AssetImage("assets/x.png"));
Image oimage = const Image(image: AssetImage("assets/o.png"));
int counter = 0;
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
        return Container(
          decoration: BoxDecoration(border: Border.all()),
          child: ElevatedButton(
            onPressed: () {
              if (counter == 0) {}
            },
            child: oimage,
            style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.transparent)),
          ),
        );
      },
      itemCount: 9,
    );
  }
}
