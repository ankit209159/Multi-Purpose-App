// 0F1215-BackGround color
// 1A1E23-InActive color
// 232631-Active color
// 272B34-Active2 color
// 6ACCB8-Blue color

// ignore_for_file: camel_case_types

import 'package:bmi_cal/bmi_page1.dart';
import 'package:bmi_cal/menu_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:math';
import 'dice.dart';
import 'xylophone.dart';

const kSmallText = TextStyle(fontSize: 18.0, color: Color(0xffffffff));
const kBigText = TextStyle(
    fontSize: 25, fontWeight: FontWeight.bold, color: Color(0xffffffff));
const kBackgroundColor = Color(0xff0F1215);
const kInactiveColor = Color(0xff1A1E23);
const kActivecolor = Color(0xff272B34);
const kBlueColor = Color(0xff6ACCB8);
const kBottomButtonColor = Color(0xff232631);
const kBottomButtonText =
    TextStyle(fontSize: 45, fontWeight: FontWeight.bold, color: Colors.white);

void main() {
  runApp(
    MaterialApp(
      home: const menu(),
      routes: {
        '/bmi': (context) => const Page1(),
        '/dice': (context) => const dice(),
        '/xylophone': (context) => const xylophone(),
      },
    ),
  );
}

class UBtext extends StatelessWidget {
  const UBtext(this.iconz, this.te, {super.key});

  final Icon iconz;
  final String te;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        iconz,
        const SizedBox(height: 20),
        Text(
          textAlign: TextAlign.center,
          te,
          style: kSmallText,
        ),
      ],
    );
  }
}

class Box1 extends StatelessWidget {
  const Box1(this.cusWid, {super.key});

  final Widget cusWid;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        decoration: BoxDecoration(
          color: const Color(0xff1A1E23),
          borderRadius: BorderRadius.circular(10),
        ),
        child: cusWid,
      ),
    );
  }
}

class Box3 extends StatefulWidget {
  const Box3({Key? key}) : super(key: key);

  @override
  State<Box3> createState() => _Box3State();
}

class _Box3State extends State<Box3> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            if (fcusCol == inactive) {
              fcusCol = active;
              mcusCol = inactive;
            } else {
              fcusCol = inactive;
            }
          });
        },
        child: Container(
          margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          decoration: BoxDecoration(
            color: fcusCol,
            borderRadius: BorderRadius.circular(10),
          ),
          child:
              const UBtext(Icon(Icons.female, size: 60, color: kBlueColor), 'Female'),
        ),
      ),
    );
  }
}

class Box2 extends StatefulWidget {
  const Box2({Key? key}) : super(key: key);

  @override
  State<Box2> createState() => _Box2State();
}

class _Box2State extends State<Box2> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            if (mcusCol == inactive) {
              mcusCol = active;
              fcusCol = inactive;
            } else {
              mcusCol = inactive;
            }
          });
        },
        child: Container(
          margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          decoration: BoxDecoration(
            color: mcusCol,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const UBtext(Icon(Icons.male, size: 60, color: kBlueColor), 'Male'),
        ),
      ),
    );
  }
}

void func(int g) {}

class ag extends StatefulWidget {
  const ag({Key? key}) : super(key: key);

  @override
  State<ag> createState() => _agState();
}

class _agState extends State<ag> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Age', style: kSmallText),
        const SizedBox(height: 15),
        Text(age.toString(), style: kBigText),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  age--;
                });
              },
              icon: const Icon(FontAwesomeIcons.circleMinus,
                  size: 50, color: kBlueColor),
            ),
            const SizedBox(width: 25),
            IconButton(
              onPressed: () {
                setState(() {
                  age++;
                });
              },
              icon: const Icon(FontAwesomeIcons.circlePlus,
                  size: 50, color: kBlueColor),
            ),
          ],
        )
      ],
    );
  }
}

class asd {
  asd(this.height, this.weight);

  final int height;
  final int weight;

  double bmi = 0;

  String calculateBMI() {
    bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (bmi >= 25) {
      return 'Overweight';
    } else if (bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
