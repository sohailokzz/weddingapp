import 'package:flutter/material.dart';
import 'package:wedding/pages/landing_pages/landingpage1.dart';
import 'package:wedding/pages/landing_pages/landingpage2.dart';
import 'package:wedding/pages/landing_pages/landingpage3.dart';
import 'package:wedding/ui/bottom_view.dart';

class LandingPages extends StatefulWidget {
  @override
  _LandingPagesState createState() => _LandingPagesState();
}

class _LandingPagesState extends State<LandingPages> {
  List<Widget> pages = [LandingPage1(), LandingPage2(), LandingPage3()];

  var currentPageValue = 0.0;

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController();

    controller.addListener(() {
      setState(() {
        currentPageValue = controller.page;
      });
    });
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView.builder(
            controller: controller,
            itemCount: pages.length,
            itemBuilder: (context, position) {
              if (position == currentPageValue.floor()) {
                return Transform(
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, 0.001)
                    ..rotateX(currentPageValue - position)
                    ..rotateY(currentPageValue - position)
                    ..rotateZ(currentPageValue - position),
                  child: Container(
                    child: Image(
                      image: AssetImage(
                        'assets/images/pic1.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              } else if (position == currentPageValue.floor() + 1) {
                return Transform(
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, 0.001)
                    ..rotateX(currentPageValue - position)
                    ..rotateY(currentPageValue - position)
                    ..rotateZ(currentPageValue - position),
                  child: Container(
                    child: Image(
                      image: AssetImage(
                        'assets/images/pic2.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              } else {
                return Container(
                  child: Image(
                    image: AssetImage(
                      'assets/images/pic3.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                );
              }
            },
          ),
          BottomView(),
          Positioned(
            bottom: 210.0,
            left: 130.0,
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.grey,
              child: CircleAvatar(
                backgroundColor: Color(0XA32B2A47),
                radius: 48,
                child: CircleAvatar(
                  radius: 46,
                  backgroundImage: AssetImage('assets/images/robb_stark.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
