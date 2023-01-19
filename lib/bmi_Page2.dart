// ignore_for_file: file_names

import 'package:bmi_cal/main.dart';
import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2(this.interpretation, this.bmiResult, this.resultText, {super.key});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: kBackgroundColor,
          appBar: AppBar(
            backgroundColor: kBackgroundColor,
            title: const Text('Result', style: kBigText),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Box1(Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(resultText.toUpperCase(),
                        textAlign: TextAlign.center, style: kBigText),
                  ),
                  const SizedBox(height: 30),
                  Text(bmiResult, style: kBigText),
                  const SizedBox(height: 40),
                  Text(interpretation, style: kBottomButtonText),
                ],
              )),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 70,
                  color: kBottomButtonColor,
                  child: const Center(
                    child: Text('ReCalculate', style: kBottomButtonText),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
