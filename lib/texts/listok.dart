import 'package:flutter/material.dart';

class Listok extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Column(
        children: [
          Icon(
            Icons.ac_unit,
            color: Colors.white,
          ),
          Text(
            '5',
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
          Text(
            'km-hv',
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
        ],
      ),
      Column(
        children: [
          Icon(
            Icons.ac_unit,
            color: Colors.white,
          ),
          Text(
            '5',
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
          Text(
            '%',
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
        ],
      ),
      Column(
        children: [
          Icon(
            Icons.ac_unit,
            color: Colors.white,
          ),
          Text(
            '5',
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
          Text(
            '%',
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
        ],
      )
    ],
  );
  }
}