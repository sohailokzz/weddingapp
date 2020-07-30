import 'package:flutter/material.dart';
import 'package:wedding/screens/video_player_screen.dart';
import 'package:wedding/ui/friend_list.dart';
import 'package:wedding/ui/couple_profile.dart';
import 'package:wedding/ui/friend_info.dart';
import 'package:wedding/ui/wedding_menu.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                SizedBox(
                  height: 250,
                  width: double.infinity,
                  child: Image(
                    image: AssetImage('assets/images/main_app_bar.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                CoupleProfile(),
                AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                ),
              ],
            ),
            WeddingMenu(),
            VideoPlayerScreen(),
            FriendsInfo(),
            FriendList(),
          ],
        ),
      ),
    );
  }
}
