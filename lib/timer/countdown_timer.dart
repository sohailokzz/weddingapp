import 'dart:async';
import 'package:flutter/material.dart';

class Countdown extends StatefulWidget {
  @override
  _CountdownState createState() => _CountdownState();
}

class _CountdownState extends State<Countdown> {
  Timer _timer;
  int seconds;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: constructTime(seconds),
    );
  }

  Widget constructTime(int seconds) {
    int day = seconds ~/ 3600 ~/ 24;
    int hour = seconds ~/ 3600 - 24;
    int minute = seconds % 3600 ~/ 60;
    int second = seconds % 60;
    return Row(
      children: <Widget>[
        MyCard(
          dateTime: 'Days',
          remainingTime: '$day',
        ),
        MyCard(
          dateTime: 'Hours',
          remainingTime: '$hour',
        ),
        MyCard(
          dateTime: 'Minutes',
          remainingTime: '$minute',
        ),
        MyCard(
          dateTime: 'Seconds',
          remainingTime: '$second',
        ),
      ],
    );
  }

  @override
  void initState() {
    super.initState();

    var now = DateTime.now();

    var twoHours = now.add(Duration(days: 2)).difference(now);

    seconds = twoHours.inSeconds;
    startTimer();
  }

  void startTimer() {
    const period = const Duration(seconds: 1);
    _timer = Timer.periodic(period, (timer) {
      setState(() {
        seconds--;
      });
      if (seconds == 0) {
        cancelTimer();
      }
    });
  }

  void cancelTimer() {
    if (_timer != null) {
      _timer.cancel();
      _timer = null;
    }
  }
}

class MyCard extends StatelessWidget {
  MyCard({this.dateTime, this.remainingTime});
  final String dateTime;
  final String remainingTime;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 60.0,
        child: Card(
          color: Colors.pink[50],
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  remainingTime,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                Text(dateTime),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
