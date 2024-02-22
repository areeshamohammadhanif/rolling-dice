import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dice Roller",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int diceOne  = 2, diceTwo = 1;

  void rollDice(){   
    setState(() {
      diceOne = Random().nextInt(6) +1;
      diceTwo = Random().nextInt(6) +1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: Text("Dice Rolling Project"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("assets/appimages/${diceOne}.png", height: 100, width: 100),
              Image.asset("assets/appimages/${diceTwo}.png", height: 100, width: 100)
            ],
          ),
          ElevatedButton(
            onPressed: rollDice,
            child: Text('Roll dice', style: TextStyle(fontSize: 18 )),
          ),
        ],
      )
    );
  }
}


