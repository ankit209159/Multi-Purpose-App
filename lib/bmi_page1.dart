import 'main.dart';
import 'package:flutter/material.dart';
import 'package:bmi_cal/bmi_Page2.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

int height = 180;
int weight = 50;
int age = 20;
Color inactive = kInactiveColor;
Color active = kActivecolor;
Color mcusCol = kInactiveColor;
Color fcusCol = kInactiveColor;
Icon m = const Icon(Icons.male);
Icon f = const Icon(Icons.female);

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xff0F1215),
          appBar: AppBar(
            backgroundColor: const Color(0xff0F1215),
            title: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  setState(() {
                    height = 180;
                    weight = 50;
                    age = 20;
                  });
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
                          'BMI CALCULATOR',
                          textAlign: TextAlign.center,
                          style: kBigText,
                        )),
                  ],
                )),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: const [
                    Box2(),
                    Box3(),
                  ],
                ),
              ),
              const Box1(Slid()),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: const [
                    Box1(We()),
                    Box1(ag()),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  asd calc = asd(height, weight);
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Page2(
                      calc.calculateBMI(),
                      calc.getResult(),
                      calc.getInterpretation(),
                    );
                  }));
                },
                child: Container(
                  height: 70,
                  color: kBottomButtonColor,
                  child: const Center(
                    child: Text('Calculate', style: kBottomButtonText),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class We extends StatefulWidget {
  const We({Key? key}) : super(key: key);

  @override
  State<We> createState() => _WeState();
}

class _WeState extends State<We> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Weight', style: kSmallText),
        const SizedBox(height: 15),
        Text(
          weight.toString(),
          style: kBigText,
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  weight--;
                });
              },
              icon: const Icon(FontAwesomeIcons.circleMinus,
                  size: 50, color: kBlueColor),
            ),
            const SizedBox(width: 25),
            IconButton(
              onPressed: () {
                setState(() {
                  weight++;
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

class Slid extends StatefulWidget {
  const Slid({Key? key}) : super(key: key);

  @override
  State<Slid> createState() => _SlidState();
}

class _SlidState extends State<Slid> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text('Height', style: kSmallText),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(height.toString(), style: kBottomButtonText),
            const Text(' cm', style: kSmallText),
          ],
        ),
        Slider(
          value: height.toDouble(),
          min: 120.0,
          max: 220.0,
          inactiveColor: kActivecolor,
          activeColor: kBlueColor,
          onChanged: (double nValue) {
            setState(() {
              height = nValue.toInt();
            });
          },
        ),
      ],
    );
  }
}
