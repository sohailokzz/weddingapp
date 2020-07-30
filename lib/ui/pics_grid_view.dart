import 'package:flutter/material.dart';

class PicsGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      child: GridView.count(
        scrollDirection: Axis.horizontal,
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            child: Image(
              image: AssetImage(
                'assets/images/pre_wedding1.png',
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(15.0),
              ),
              color: Colors.teal[100],
            ),
          ),
          Container(
            child: Image(
              image: AssetImage(
                'assets/images/pre_wedding2.png',
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(15.0),
              ),
              color: Colors.teal[100],
            ),
          ),
          Container(
            child: Image(
              image: AssetImage(
                'assets/images/pre_wedding3.png',
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(15.0),
              ),
              color: Colors.teal[100],
            ),
          ),
          Container(
            child: Image(
              image: AssetImage(
                'assets/images/pre_wedding4.png',
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(15.0),
              ),
              color: Colors.teal[100],
            ),
          ),
          Container(
            child: Image(
              image: AssetImage(
                'assets/images/pre_wedding5.png',
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(15.0),
              ),
              color: Colors.teal[100],
            ),
          ),
          Container(
            child: Image(
              image: AssetImage(
                'assets/images/pre_wedding1.png',
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(15.0),
              ),
              color: Colors.teal[100],
            ),
          ),
          Container(
            child: Image(
              image: AssetImage(
                'assets/images/pre_wedding3.png',
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(15.0),
              ),
              color: Colors.teal[100],
            ),
          ),
          Container(
            child: Image(
              image: AssetImage(
                'assets/images/pre_wedding2.png',
              ),
              fit: BoxFit.fill,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(15.0),
              ),
              color: Colors.teal[100],
            ),
          ),
        ],
      ),
    );
  }
}
