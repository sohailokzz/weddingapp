import 'package:flutter/material.dart';

class WeddingMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'Wedding Menu',
          style: TextStyle(
            fontSize: 40.0,
            fontFamily: 'RougeScript-Regular',
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 250.0,
              child: Image(
                image: AssetImage('assets/images/side_flower1.png'),
              ),
            ),
            Column(
              children: <Widget>[
                Text(
                  'For Sharing',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.grey[600],
                    fontFamily: 'RougeScript-Regular',
                  ),
                ),
                Text(
                  'Here goes the starter number one',
                  textAlign: TextAlign.center,
                ),
                Text(
                  'entrees goes here',
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  'Main Dishes',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.grey[600],
                    fontFamily: 'RougeScript-Regular',
                  ),
                ),
                Text(
                  'Write your main dish in this text here',
                  textAlign: TextAlign.center,
                ),
                Text(
                  'delicious dishes place here',
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  'Tasty Desert',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.grey[600],
                    fontFamily: 'RougeScript-Regular',
                  ),
                ),
                Text(
                  'Tasty Cakes',
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Chocolate and Fruits',
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  'Nicholas',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.grey[600],
                    fontFamily: 'RougeScript-Regular',
                  ),
                ),
                Text(
                  'And',
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Vanessa',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.grey[600],
                    fontFamily: 'RougeScript-Regular',
                  ),
                ),
              ],
            ),
            Container(
              height: 250.0,
              child: Image(
                image: AssetImage('assets/images/side_flower2.png'),
              ),
            ),
          ],
        )
      ],
    );
  }
}
