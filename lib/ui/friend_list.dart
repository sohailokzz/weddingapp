import 'package:flutter/material.dart';

class FriendList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      height: 300.0,
      color: Colors.white,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          MyFriends(),
          MyFriends(),
          MyFriends(),
          MyFriends(),
        ],
      ),
    );
  }
}

class MyFriends extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 230.0,
      child: Column(
        children: <Widget>[
          Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(16.0, 40.0, 16.0, 16.0),
                width: 300.0,
                height: 180.0,
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
                    ),
                  ],
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(
                    width: 2.0,
                    color: Colors.pink[50],
                  ),
                ),
              ),
              Positioned(
                child: CircleAvatar(
                  radius: 45,
                  backgroundColor: Colors.purpleAccent,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 43,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage:
                          AssetImage('assets/images/robb_stark.png'),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 100,
                child: Column(
                  children: <Widget>[
                    Text(
                      'Robb Stark',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Gilroy',
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.location_on,
                          color: Colors.grey,
                        ),
                        Text(
                          'Mascow, Russia',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Gilroy',
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, sadipscing\n'
                      ' elitr, sed diam nonumy eirmod tempor\n'
                      ' ut labore et dolore aliquyam\n',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Gilroy',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
