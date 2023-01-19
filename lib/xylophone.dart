// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'main.dart';

class xylophone extends StatefulWidget {
  const xylophone({Key? key}) : super(key: key);

  @override
  State<xylophone> createState() => _xylophoneState();
}

class _xylophoneState extends State<xylophone> {
  Expanded tone(Color col, int to) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          final player = AudioPlayer();
          player.play(AssetSource('note$to.wav'));
        },
        style: TextButton.styleFrom(
          backgroundColor: col,
        ),
        child: const Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: kBackgroundColor,
          appBar: AppBar(
            backgroundColor: const Color(0xff0F1215),
            title: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Row(
                  children: const [
                    Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.arrow_back,
                          color: Color(0xff6ACCB8),
                        )),
                    Expanded(
                        flex: 10,
                        child: Text(
                          'Xylophone',
                          textAlign: TextAlign.center,
                          style: kBigText,
                        )),
                  ],
                )),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              tone(Colors.purple, 1),
              tone(Colors.indigo, 2),
              tone(Colors.blue, 3),
              tone(Colors.green, 4),
              tone(Colors.yellow, 5),
              tone(Colors.orange, 6),
              tone(Colors.red, 7),
            ],
          ),
        ),
      ),
    );
  }
}
