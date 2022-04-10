import 'package:flutter/material.dart';
import 'package:udemyhomew2/box/box.dart';
import 'package:udemyhomew2/box/box2.dart';
import 'package:udemyhomew2/box/box3.dart';
import 'package:udemyhomew2/box/box4.dart';
import 'package:udemyhomew2/box/box5.dart';
import 'package:udemyhomew2/box/box6.dart';
import 'package:udemyhomew2/box/box7.dart';
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
            MyBox(),
            MyBox2(),
            MyBox3(),
            MyBox4(),
            MyBox5(),
            MyBox6(),
            MyBox7(),
          ],
        ),
      )
    ],
  ));
}
  }