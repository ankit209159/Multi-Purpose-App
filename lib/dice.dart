// ignore_for_file: camel_case_types

import 'dart:math';
import 'package:flutter/material.dart';
import 'main.dart';

class dice extends StatefulWidget {
  const dice({Key? key}) : super(key: key);

  @override
  State<dice> createState() => _diceState();
}

class _diceState extends State<dice> {
  int no = 1, noo = 1;
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
                          'Dices',
                          textAlign: TextAlign.center,
                          style: kBigText,
                        )),
                  ],
                )),
          ),
          body: Center(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        no = Random().nextInt(6) + 1;
                        noo = Random().nextInt(6) + 1;
                      });
                    },
                    child: Image(
                      image: AssetImage('images/dice$no.png'),
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        noo = Random().nextInt(6) + 1;
                        no = Random().nextInt(6) + 1;
                      });
                    },
                    child: Image(
                      image: AssetImage('images/dice$noo.png'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
