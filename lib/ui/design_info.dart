import 'package:flutter/material.dart';

class InfoDesign extends StatelessWidget {
  InfoDesign({this.title, this.view});

  final String title;
  final String view;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontFamily: 'Gilroy',
              letterSpacing: 4.0,
            ),
          ),
          Text(
            view,
            style: TextStyle(
              color: Colors.red[100],
              fontWeight: FontWeight.bold,
              fontFamily: 'Gilroy',
              letterSpacing: 4.0,
            ),
          ),
        ],
      ),
    );
  }
}
