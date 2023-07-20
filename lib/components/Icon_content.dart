import 'package:flutter/material.dart';
import '../conostant.dart';
class Iconcontac extends StatelessWidget {
  final IconData icon;
  final String data;

  Iconcontac({@required this.icon, this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          data,
          style: kDataStyle
        ),
      ],
    );
  }
}