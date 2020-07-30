import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wedding/pages/event.dart';
import 'package:wedding/pages/gallery.dart';
import 'package:wedding/pages/home_page.dart';
import 'package:wedding/pages/wall.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentTab = 0;
  // Pages
  HomePage homePage;
  WallPage wallPage;
  EventPage eventPage;
  GalleryPage galleryPage;

  List<Widget> pages;
  Widget currentPage;

  @override
  void initState() {
    homePage = HomePage();
    wallPage = WallPage();
    eventPage = EventPage();
    galleryPage = GalleryPage();
    pages = [homePage, wallPage, eventPage, galleryPage];

    currentPage = homePage;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30),
            ),
            boxShadow: [
              BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
            child: BottomNavigationBar(
              selectedItemColor: Colors.pink[100],
              type: BottomNavigationBarType.fixed,
              elevation: 0.0,
              backgroundColor: Colors.white,
              currentIndex: currentTab,
              onTap: (index) {
                setState(() {
                  currentTab = index;
                  currentPage = pages[index];
                });
              },
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.widgets,
                  ),
                  title: Text("Home"),
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    FontAwesomeIcons.camera,
                  ),
                  title: Text("Wall"),
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    FontAwesomeIcons.calendarAlt,
                  ),
                  title: Text("Event"),
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.photo_album,
                  ),
                  title: Text("Gallery"),
                ),
              ],
            ),
          ),
        ),
        body: currentPage,
      ),
    );
  }
}
