import 'package:flutter/material.dart';

class Reusable extends StatelessWidget {
  final Color color;
  final cardchild;
  final Function onPress;
  Reusable({@required this.color, this.cardchild, this.onPress});

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardchild,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        margin: EdgeInsets.all(15.0),
      ),
    );
  }
}
