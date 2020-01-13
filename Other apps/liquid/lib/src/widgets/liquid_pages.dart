import 'package:flutter/material.dart';

final styleText = TextStyle(fontSize: 20, color: Colors.white);

final liquidPages = [
  liquidContainer(Colors.blueAccent, 1),
  liquidContainer(Colors.deepOrangeAccent, 2),
  liquidContainer(Colors.deepPurpleAccent, 3),
  liquidContainer(Colors.indigoAccent, 4),
  liquidContainer(Colors.greenAccent, 5),
];

Container liquidContainer(Color color, int number) {
  return Container(
  color: color,
  height: double.infinity,
  width: double.infinity,
  child: Center(
    child: Text(
      'Slide $number',
      style: styleText,
    ),
  ),
);
}
