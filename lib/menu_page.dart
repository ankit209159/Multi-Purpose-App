// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'main.dart';

class menu extends StatefulWidget {
  const menu({Key? key}) : super(key: key);

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff0F1215),
        appBar: AppBar(
          backgroundColor: const Color(0xff0F1215),
          title: const Center(child: Text('Multi Purpose App', style: kBigText)),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/bmi');
                      },
                      child: const Box1(UBtext(
                          Icon(
                            Icons.calculate_outlined,
                            color: Color(0xff6ACCB8),
                            size: 50,
                          ),
                          'BMI\nCalculator')),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/dice');
                      },
                      child: const Box1(UBtext(
                          Icon(
                            Icons.gamepad_outlined,
                            color: Color(0xff6ACCB8),
                            size: 50,
                          ),
                          'Dice')),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/xylophone');
                      },
                      child: const Box1(UBtext(
                          Icon(
                            Icons.music_note,
                            color: Color(0xff6ACCB8),
                            size: 50,
                          ),
                          'Xylophone')),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const [
                  Box1(UBtext(
                      Icon(
                        Icons.add,
                        color: Color(0xff6ACCB8),
                        size: 50,
                      ),
                      'Coming\nsoon')),
                  Box1(UBtext(
                      Icon(
                        Icons.add,
                        color: Color(0xff6ACCB8),
                        size: 50,
                      ),
                      'Coming\nsoon')),
                  Box1(UBtext(
                      Icon(
                        Icons.add,
                        color: Color(0xff6ACCB8),
                        size: 50,
                      ),
                      'Coming\nsoon')),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const [
                  Box1(UBtext(
                      Icon(
                        Icons.add,
                        color: Color(0xff6ACCB8),
                        size: 50,
                      ),
                      'Coming\nsoon')),
                  Box1(UBtext(
                      Icon(
                        Icons.add,
                        color: Color(0xff6ACCB8),
                        size: 50,
                      ),
                      'Coming\nsoon')),
                  Box1(UBtext(
                      Icon(
                        Icons.add,
                        color: Color(0xff6ACCB8),
                        size: 50,
                      ),
                      'Coming\nsoon')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
