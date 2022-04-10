import 'package:flutter/material.dart';

class MainFaz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
}
