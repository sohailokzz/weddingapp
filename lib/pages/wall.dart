import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WallPage extends StatefulWidget {
  @override
  _WallPageState createState() => _WallPageState();
}

class _WallPageState extends State<WallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  ClipPath(
                    // clipper: OvalBottomBorderClipper(),
                    child: Container(
                      margin: const EdgeInsets.only(top: 30),
                      height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/wedding.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        top: 100.0, left: 120.0, right: 120.0, bottom: 50.0),
                    child: Image(
                      image: AssetImage('assets/images/text.png'),
                      height: 150.0,
                      width: 150.0,
                    ),
                  ),
                ],
              ),
              Center(
                child: Text(
                  'about Us',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 40.0,
                    fontFamily: 'Rouge_Script',
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: RichText(
                  text: TextSpan(
                    text: 'Naughty',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Gilroy',
                    ),
                    children: [
                      TextSpan(
                        text: '  Groom',
                        style: TextStyle(
                          color: Colors.pink[100],
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                          fontFamily: 'Gilroy',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Lorem ipsum dolor sit amet,\n'
                                'sadipscing elitr, sed diam nonumy eirmod\n'
                                'tempor invidunt ut labore et dolore\n'
                                'magna aliquyam erat, sed diam voluptua.\n',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 13.0,
                                  fontFamily: 'Gilroy',
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    FontAwesomeIcons.facebook,
                                    size: 20.0,
                                    color: Colors.blue[100],
                                  ),
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                  Icon(
                                    FontAwesomeIcons.twitter,
                                    size: 20.0,
                                    color: Colors.blue[100],
                                  ),
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                  Icon(
                                    FontAwesomeIcons.instagram,
                                    size: 20.0,
                                    color: Colors.blue[100],
                                  )
                                ],
                              ),
                            ],
                          )),
                      Spacer(),
                      Image(
                        image: AssetImage('assets/images/boy.png'),
                        height: 100.0,
                        width: 100.0,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: <Widget>[
                      Image(
                        image: AssetImage('assets/images/girl.png'),
                        height: 100.0,
                        width: 100.0,
                      ),
                      Spacer(),
                      Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: RichText(
                              //textAlign: TextAlign.start,
                              text: TextSpan(
                                  text: 'Sweety',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Gilroy',
                                  ),
                                  children: [
                                    TextSpan(
                                      text: ' Bride',
                                      style: TextStyle(
                                        color: Colors.pink[100],
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.0,
                                        fontFamily: 'Gilroy',
                                      ),
                                    ),
                                  ]),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10.0),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  'Lorem ipsum dolor sit amet,\n'
                                  'sadipscing elitr, sed diam nonumy eirmod\n'
                                  'tempor invidunt ut labore et dolore\n'
                                  'magna aliquyam erat, sed diam voluptua.\n',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 13.0,
                                    fontFamily: 'Gilroy',
                                  ),
                                ),
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      FontAwesomeIcons.facebook,
                                      size: 20.0,
                                      color: Colors.blue[100],
                                    ),
                                    SizedBox(
                                      width: 20.0,
                                    ),
                                    Icon(
                                      FontAwesomeIcons.twitter,
                                      size: 20.0,
                                      color: Colors.blue[100],
                                    ),
                                    SizedBox(
                                      width: 20.0,
                                    ),
                                    Icon(
                                      FontAwesomeIcons.instagram,
                                      size: 20.0,
                                      color: Colors.blue[100],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 40.0,
              ),
              Stack(
                children: <Widget>[
                  Image.asset('assets/images/heart.png'),
                  Container(
                    padding: EdgeInsets.only(top: 30.0),
                    child: Center(
                      child: Text(
                        'Our Love Story',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 40.0,
                          fontFamily: 'Rouge_Script',
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                padding: EdgeInsets.all(30.0),
                child: Image(
                  image: AssetImage('assets/images/couple.png'),
                ),
              ),
              Center(
                child: Text(
                  'The first met',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0,
                    fontFamily: 'Constantia Font',
                  ),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Center(
                child: Text(
                  'May 6, 2020',
                  style: TextStyle(
                    color: Colors.pink[100],
                    fontSize: 15.0,
                    fontFamily: 'Constantia Font',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'Lorem ipsum dolor sit amet, consetetur sadipscing \n'
                  ' nonumy eirmod tempor invidunt ut labore et dolore\n'
                  ' aliquyam erat, sed diam voluptua. At vero eos et \n'
                  ' dolor sit amet, consetetur sadipscing elitr, sed \n'
                  ' tempor invidunt ut labore ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13.0,
                    fontFamily: 'Gilroy',
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
