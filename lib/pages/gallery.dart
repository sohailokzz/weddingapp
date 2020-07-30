import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wedding/ui/gallery_view.dart';
import 'package:wedding/ui/pics_grid_view.dart';
import 'package:wedding/ui/design_info.dart';

class GalleryPage extends StatefulWidget {
  @override
  _GalleryPageState createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image(
              image: AssetImage(
                'assets/images/gallery_top.png',
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(
                  top: 20.0,
                ),
                height: 50.0,
                width: 120.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30.0),
                  ),
                  color: Colors.red[50],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      color: Colors.red[100],
                      disabledColor: Colors.red[200],
                      icon: Icon(
                        FontAwesomeIcons.camera,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.red[100],
                      disabledColor: Colors.red[200],
                      icon: Icon(
                        FontAwesomeIcons.video,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
            InfoDesign(
              title: 'PRE WEDDING',
              view: 'VIEW ALL',
            ),
            PicsGridView(),
            InfoDesign(
              title: 'HOLIDAY TOUR',
              view: 'VIEW MODEL',
            ),
            GalleryView(),
          ],
        ),
      ),
    );
  }
}
