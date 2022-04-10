import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WeatherForecast(),
    );
  }
}

class WeatherForecast extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[900],
      appBar: AppBar(
        title: Text('Weather Forecast'),
        centerTitle: true,
        backgroundColor: Colors.orange[900],
      ),
      body: _buildBody(),
    );
  }
}

Widget _buildBody() {
  return SingleChildScrollView(
      child: Column(
    children: [
      _mainfaz(),
      Padding(padding: EdgeInsets.all(25)),
      _temperature(),
      Padding(padding: EdgeInsets.all(25)),
      _listok0(),
      Padding(padding: EdgeInsets.all(25)),
      _text(),
      Padding(padding: EdgeInsets.all(10)),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            _box(),
            _box2(),
            _box3(),
            _box4(),
            _box5(),
            _box6(),
            _box7(),
          ],
        ),
      )
    ],
  ));
}

Center _mainfaz() {
  return Center(
    child: Column(
      children: [
        TextField(
          decoration: InputDecoration(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            hintText: 'Enter City Name',
            hintStyle: TextStyle(color: Colors.white),
            enabledBorder: UnderlineInputBorder(borderSide: BorderSide.none),
          ),
        ),
        Padding(padding: EdgeInsets.all(10)),
        Text(
          'Yekaterinburg, RU',
          style: TextStyle(fontSize: 35, color: Colors.white),
        ),
        Padding(padding: EdgeInsets.all(5)),
        Text('Friday, April 8, 2022',
            style: TextStyle(fontSize: 18, color: Colors.white)),
      ],
    ),
  );
}

Row _temperature() {
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

Row _listok0() {
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

Center _text() {
  return Center(
    child: Text(
      '7-DAY WEATHER FORECAST',
      style: TextStyle(fontSize: 20, color: Colors.white),
    ),
  );
}

Row _box() {
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
                  'Saturday',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                Padding(padding: EdgeInsets.all(5)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [ 
                    Text(
                      '6° F',
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

Row _box2() {
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
                  'Sunday',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                Padding(padding: EdgeInsets.all(5)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [ 
                    Text(
                      '8° F',
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

Row _box3() {
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
                  'Monday',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                Padding(padding: EdgeInsets.all(5)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [ 
                    Text(
                      '12° F',
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

Row _box4() {
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
                  'Tuesday',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                Padding(padding: EdgeInsets.all(5)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [ 
                    Text(
                      '20° F',
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

Row _box5() {
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
                  'Wednesday',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                Padding(padding: EdgeInsets.all(5)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [ 
                    Text(
                      '-2° F',
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

Row _box6() {
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
                  'Thursday',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                Padding(padding: EdgeInsets.all(5)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [ 
                    Text(
                      '-7° F',
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

Row _box7() {
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
                  'Friday',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                Padding(padding: EdgeInsets.all(5)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [ 
                    Text(
                      '10° F',
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
