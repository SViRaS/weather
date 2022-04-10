import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Weather', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        iconTheme: IconThemeData(color: Colors.black45),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          )
        ],
        brightness: Brightness.light,
      ),
      body: _buildBody(),
    ));
  }
}

Widget _buildBody() {
  return SingleChildScrollView(
    child: Column(
      children: [
        _headerImage(),
        SafeArea(
            child: Padding(
          padding: EdgeInsets.all(16.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            _weatherDescription(),
            Divider(),
            _temperature(),
            Divider(),
            _temperaturebox(),
            Divider(),
            _footerRatings(),
          ]),
        ))
      ],
    ),
  );
}

Image _headerImage() {
  return Image(
    image: NetworkImage(
        'https://static.mk.ru/upload/entities/2020/08/13/14/articles/facebookPicture/dc/79/0e/73/76e2fd2504a7557d5a6a2089249947cd.jpg'),
    fit: BoxFit.cover,
  );
}

Column _weatherDescription() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text('Monday - April 5',
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
      Divider(),
      Text(
        'Правда — это странная штука. Сначала мы тратим кучу времени, чтобы ее узнать, а потом всю оставшуюся жизнь, чтобы забыть.',
        style: TextStyle(color: Colors.black54),
      )
    ],
  );
}

Row _temperature() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Icon(Icons.wb_sunny, color: Colors.yellow),
      ]),
      SizedBox(
        width: 16,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: <Widget>[
              Text(
                '17° Clear',
                style: TextStyle(color: Colors.deepPurple),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Text(
                'Yekaterinberg',
                style: TextStyle(color: Colors.grey),
              )
            ],
          )
        ],
      ),
    ],
  );
}

Wrap _temperaturebox() {
  return Wrap(
  spacing: 10,
  children: 
    List.generate(8, (int index) {
      return Chip(
        label: Text(
          ('${index + 15}°C'),
          style: TextStyle(fontSize: 15),
        ),
        avatar: Icon(
          Icons.wb_cloudy,
          color: Colors.blue,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
          side: BorderSide(color: Colors.grey)),
          backgroundColor: Colors.grey.shade100,
      );}),);
}


Row _footerRatings() {
  var stars = Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(Icons.star, size: 15, color: Colors.yellow[600]),
      Icon(Icons.star, size: 15, color: Colors.yellow[600]),
      Icon(Icons.star, size: 15, color: Colors.yellow[600]),
      Icon(Icons.star, size: 15, color: Colors.yellow[600]),
      Icon(Icons.star, size: 15,),

  ],);
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Text('Оценка нашего приложения ', style: TextStyle(fontSize: 15),),
      stars
    ],);
}

Row _box() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [SizedBox(
      height: 110,
      width: 150,
  child: Card(child: Text('Hello World!', style: TextStyle(color: Colors.white),), color: Colors.white70,),
),

    ],
  );
}