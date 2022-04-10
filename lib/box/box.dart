import 'package:flutter/material.dart';

class MyBox extends StatelessWidget {
  const MyBox({
    Key? key,
    required this.title,
    required this.temperature,
  }) : super(key: key);

  final String title;
  final String temperature;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      SizedBox(
        height: 120,
        width: 170,
        child: Card(
            color: Colors.white38,
            child: Center(
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.all(5)),
                  Text(
                    title,
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        temperature,
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                      Padding(padding: EdgeInsets.all(3)),
                      Icon(
                        Icons.wb_sunny,
                        size: 32,
                        color: Colors.white,
                      )
                    ],
                  )
                ],
              ),
            )),
      ),
    ]);
  }
}
