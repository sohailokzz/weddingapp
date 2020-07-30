import 'package:flutter/material.dart';
import 'package:wedding/timer/countdown_timer.dart';

class CoupleProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(16.0, 180.0, 16.0, 16.0),
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 35.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 15.0,
                        spreadRadius: 1.0,
                        offset: Offset(
                          0.0,
                          5.0,
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.circular(15.0)),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(16.0, 70.0, 16.0, 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 8.0),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "Nicolas Nlc",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Gilroy',
                                  ),
                                ),
                                Text(
                                  "The Groom",
                                  style: TextStyle(
                                    fontSize: 13.0,
                                    color: Colors.red,
                                    fontFamily: 'Gilroy',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Icon(
                            Icons.favorite,
                            color: Colors.pink[200],
                          ),
                          Expanded(
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "Vanessa",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Gilroy',
                                  ),
                                ),
                                Text(
                                  "The Bride",
                                  style: TextStyle(
                                    fontSize: 13.0,
                                    color: Colors.red,
                                    fontFamily: 'Gilroy',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      Countdown(),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: AssetImage('assets/images/nicholas.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: AssetImage('assets/images/vanessa.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    margin: EdgeInsets.only(left: 16.0),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 30.0),
          Column(
            children: <Widget>[
              Container(
                height: 70,
                color: Colors.transparent,
                child: Image(
                  image: AssetImage(
                    'assets/images/flowers.png',
                  ),
                ),
              ),
              Text(
                'We Invite You to Celebrate Our Love',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'OpenSans',
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Thursday'),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    '31 Oct 2020',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                      fontFamily: 'OpenSans',
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
        ],
      ),
    );
  }
}
