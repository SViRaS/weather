import 'package:flutter/material.dart';
import 'package:udemyhomew2/box/box.dart';
import 'package:udemyhomew2/texts/forecasttext.dart';
import 'package:udemyhomew2/texts/listok.dart';
import 'package:udemyhomew2/texts/mainfaz.dart';
import 'package:udemyhomew2/texts/temperature.dart';

class BuildBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return SingleChildScrollView(
      child: Column(
    children: [
      MainFaz(),
      Padding(padding: EdgeInsets.all(25)),
      Temperature(),
      Padding(padding: EdgeInsets.all(25)),
      Listok(),
      Padding(padding: EdgeInsets.all(25)),
      ForecastText(),
      Padding(padding: EdgeInsets.all(10)),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            MyBox(title: 'Saturday', temperature: '12° F'),
            MyBox(title: 'Sunday', temperature: '5° F' ),
            MyBox(title: 'Monday', temperature: '16° F' ),
            MyBox(title: 'Tuesday', temperature: '13° F' ),
            MyBox(title: 'Wednesday', temperature: '16° F' ),
            MyBox(title: 'Thursday', temperature: '20° F' ),
            MyBox(title: 'Friday', temperature: '-12° F' ),
          ],
        ),
      )
    ],
  ));
}
  }
  
  