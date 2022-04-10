import 'package:flutter/material.dart';

class Temperature extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.wb_sunny,
              size: 90,
              color: Colors.white,
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: <Widget>[
                Padding(padding: EdgeInsets.all(10)),
                Text(
                  '14° F',
                  style: TextStyle(color: Colors.white, fontSize: 60),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Padding(padding: EdgeInsets.all(16)),
                Text(
                  'LIGHT SNOW',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}
