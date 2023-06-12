import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  void playSound(int soundnumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundnumber.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.red),
                onPressed: () {
                  playSound(1);
                },
                child: const Text(""),
              ),
            ),
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.deepOrange),
                onPressed: () {
                  playSound(2);
                },
                child: const Text(""),
              ),
            ),
            Expanded(
              child: TextButton(
                style:
                    TextButton.styleFrom(backgroundColor: Colors.yellowAccent),
                onPressed: () {
                  playSound(3);
                },
                child: const Text(""),
              ),
            ),
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.green),
                onPressed: () {
                  playSound(4);
                },
                child: const Text(""),
              ),
            ),
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.teal),
                onPressed: () {
                  playSound(5);
                },
                child: const Text(""),
              ),
            ),
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () {
                  playSound(6);
                },
                child: const Text(""),
              ),
            ),
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.purple),
                onPressed: () {
                  playSound(7);
                },
                child: const Text(""),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
