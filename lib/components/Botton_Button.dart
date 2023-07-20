import 'package:flutter/material.dart';
import '../conostant.dart';
class BottomButton extends StatelessWidget {

  BottomButton({@required this.bottonTitle, @required this.onTape});
  final String bottonTitle;
  final Function onTape;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTape,
      child: Container(
        child: Center(
          child: Text(
            bottonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: Color(0xFFEB1555),
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kBottonContainerHeight,
      ),
    );
  }
}