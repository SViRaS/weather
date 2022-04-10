import 'package:flutter/material.dart';
import 'package:udemyhomew2/buildbody.dart/buildbody.dart';


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
      body: BuildBody(),
    );
  }
}







