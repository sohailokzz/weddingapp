import 'package:flutter/material.dart';
import 'package:wedding/ui/wedding_details.dart';

class EventPage extends StatefulWidget {
  @override
  _EventPageState createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipPath(
                  child: Container(
                    height: 230,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/event_top.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                ClipPath(
                  child: Container(
                    height: 240,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/shadow.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Image(
              image: AssetImage('assets/images/special_event.png'),
              height: 100.0,
              width: 250.0,
            ),
            Container(
              margin: EdgeInsets.only(
                left: 10.0,
              ),
              height: 750.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  WeddingDetails(),
                  SizedBox(
                    width: 20.0,
                  ),
                  WeddingDetails(),
                  SizedBox(
                    width: 20.0,
                  ),
                  WeddingDetails(),
                  SizedBox(
                    width: 20.0,
                  ),
                  WeddingDetails(),
                  SizedBox(
                    width: 20.0,
                  ),
                  WeddingDetails(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
