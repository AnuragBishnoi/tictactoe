import 'package:flutter/material.dart';
import 'package:tictactoe/program_logic.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.cyan,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.transparent,
          ),
          textButtonTheme: TextButtonThemeData(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(169, 8, 207, 101))))),
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Center(
            child: Container(
              child: Row(children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.settings_backup_restore)),
              ]),
            ),
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/wood board.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Game(key: key),
        ),
      ),
    );
  }
}
