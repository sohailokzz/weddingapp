import 'package:flutter/material.dart';

class LandingPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: new DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/pic3.jpg'),
                colorFilter: new ColorFilter.mode(
                  Colors.black.withOpacity(0.71),
                  BlendMode.dstIn,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
