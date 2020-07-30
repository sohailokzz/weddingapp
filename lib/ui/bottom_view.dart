import 'package:flutter/material.dart';
import 'package:wedding/screens/main_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0.0,
      child: Container(
        height: 250.0,
        width: 360.0,
        decoration: BoxDecoration(
          color: Color(0XA32B2A47),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Column(
            children: <Widget>[
              Text(
                'www.kinolz.com',
                style: TextStyle(
                  fontFamily: 'Gilroy',
                  fontSize: 20.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      FontAwesomeIcons.mapMarkerAlt,
                      color: Colors.grey,
                      size: 15.0,
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      'Blitar, INDONESIA',
                      style: TextStyle(
                        fontFamily: 'Gilroy',
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(10.0),
                    height: 40.0,
                    child: Image(
                      image: AssetImage('assets/images/gmail.png'),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10.0),
                    height: 40.0,
                    child: Image(
                      image: AssetImage('assets/images/whatsapp.png'),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10.0),
                    height: 40,
                    child: Image(
                      image: AssetImage(
                        'assets/images/insta.png',
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 40.0,
                width: 200.0,
                child: OutlineButton(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MainScreen(),
                      ),
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        fontFamily: 'Gilroy',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
