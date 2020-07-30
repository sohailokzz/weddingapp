import 'package:flutter/material.dart';

class FriendsInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Friends (50)',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
              fontFamily: 'Gilroy',
              letterSpacing: 4.0,
            ),
          ),
          Text(
            'View All',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Colors.pink[100],
              fontFamily: 'Gilroy',
              letterSpacing: 4.0,
            ),
          ),
        ],
      ),
    );
  }
}
