import 'package:flutter/material.dart';
import 'package:heart/Extrac/bottom_Buttom.dart';
import 'package:heart/Extrac/opcity.dart';
import 'package:heart/constant.dart';

class ResultPage extends StatelessWidget {
  final String? bmiResult, resultText, intrepretation;

  ResultPage({
    @required this.bmiResult,
    @required this.resultText,
    @required this.intrepretation,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ResultPage'),
        backgroundColor: Color(0xFF0A0D22),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: OpcityCard(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText!.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult!,
                    style: kBMITextStyle,
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        'Normal BMI Range:',
                        style: kGrayBodyTextStyle,
                      ),
                      Text(
                        '18.5 - 25 kg/m2',
                        style: kBodyRangeNumberTextStyle,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      intrepretation!,
                      style: kBodyTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomButtom(
            title: 'RE-CALCULATE',
            onTop: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
