import 'package:flutter/cupertino.dart';
import '../components/Reusable_card.dart';
import '../conostant.dart';
import 'package:flutter/material.dart';
import '../components/Botton_Button.dart';

class Result extends StatelessWidget {
  Result({@required this.interpretation,this.bmiResults,this.resultText});
  final String resultText;
  final String bmiResults;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Reusable(
              color: kActiveColor_ofContainer,
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                   resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResults.toUpperCase(),
                    style: kBmiTextStyle,
                  ),
                  Text(
                    interpretation.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            bottonTitle: 'RE-CALCULATE',
            onTape: (){
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
