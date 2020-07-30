import 'dart:async';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wedding/map/google_map.dart';

class WeddingDetails extends StatefulWidget {
  @override
  _WeddingDetailsState createState() => _WeddingDetailsState();
}

class _WeddingDetailsState extends State<WeddingDetails> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.loose,
      children: <Widget>[
        Container(
          height: 750.0,
          width: 285,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 3.0,
                spreadRadius: 2.0,
                offset: Offset(
                  3.0,
                  3.0,
                ),
              ),
            ],
          ),
          child: Image(
            image: AssetImage(
              'assets/images/wedding_details.png',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(
                  top: 230.0,
                ),
                child: Icon(
                  FontAwesomeIcons.heart,
                  size: 30.0,
                  color: Colors.red,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                child: Text(
                  'For The Wedding Of',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontFamily: 'Rouge_Script',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    Text(
                      'Venessna',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.orange[300],
                        fontFamily: 'Constantia Font',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '&',
                      style: TextStyle(
                        fontSize: 40.0,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Nicholas',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.orange[300],
                        fontFamily: 'Constantia Font',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 10.0,
                ),
                child: Text(
                  'Monday, August 25th',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontFamily: 'Gilroy',
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 10.0,
                ),
                child: Row(
                  children: <Widget>[
                    Image(
                      image: AssetImage(
                        'assets/images/heart_forward.png',
                      ),
                      height: 10.0,
                    ),
                    Text(
                      '5:00 PM',
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Colors.black,
                      ),
                    ),
                    Image(
                      image: AssetImage(
                        'assets/images/heart_backward.png',
                      ),
                      height: 10.0,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 10.0,
                ),
                child: Text(
                  'Lake House Hotel',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Gilroy',
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 10.0,
                ),
                child: Text(
                  'Street Name 123',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'Gilroy',
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 10.0,
                ),
                child: Text(
                  'City, Country',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontFamily: 'Gilroy',
                  ),
                ),
              ),
              Container(
                height: 230.0,
                width: 260.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 15.0,
                      spreadRadius: 0.0,
                      offset: Offset(
                        3.0,
                        3.0,
                      ),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: MyMap(),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
