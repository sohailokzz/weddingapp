import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:geolocator/geolocator.dart';

class MyMap extends StatefulWidget {
  @override
  State<MyMap> createState() => _MyMap();
}

class _MyMap extends State<MyMap> {
  GoogleMapController _controller;
  List<Marker> allMarkers = [];

  var currentLocation;

  @override
  void initState() {
    super.initState();

    Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
        .then((currloc) {
      setState(() {
        currentLocation = currloc;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return currentLocation == null
        ? Container(
            alignment: Alignment.center,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          )
        : Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 15.0,
                      spreadRadius: 0.0,
                      offset: Offset(
                        3.0,
                        3.0,
                      ),
                    ),
                  ],
                ),
                child: GoogleMap(
                  initialCameraPosition: CameraPosition(
                    target: LatLng(
                      currentLocation.latitude,
                      currentLocation.longitude,
                    ),
                    zoom: 10,
                  ),
                  onMapCreated: mapCreated,
                  myLocationEnabled: true,
                  mapType: MapType.normal,
                  markers: {
                    Marker(
                      markerId: MarkerId(
                        'My Location',
                      ),
                      position: LatLng(
                        currentLocation.latitude,
                        currentLocation.longitude,
                      ),
                      infoWindow: InfoWindow(
                        title: 'My Location',
                      ),
                      icon: BitmapDescriptor.defaultMarkerWithHue(
                        BitmapDescriptor.hueRed,
                      ),
                    ),
                    Marker(
                      markerId: MarkerId(
                        'Surabaya Hotel',
                      ),
                      position: LatLng(
                        -7.2594,
                        112.7345,
                      ),
                      infoWindow: InfoWindow(
                        title: 'Surabaya Hotel',
                      ),
                      icon: BitmapDescriptor.defaultMarkerWithHue(
                        BitmapDescriptor.hueRed,
                      ),
                    ),
                  },
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: RaisedButton.icon(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  color: Colors.blueAccent,
                  onPressed: () {
                    movetoSurabayaHotel();
                  },
                  icon: Icon(
                    FontAwesomeIcons.hotel,
                    color: Colors.white,
                    size: 15.0,
                  ),
                  label: Text(
                    'Sarubaya Hotel',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10.0,
                    ),
                  ),
                ),
              ),
            ],
          );
  }

  void mapCreated(controller) {
    setState(() {
      _controller = controller;
    });
  }

  movetoSurabayaHotel() {
    _controller.animateCamera(CameraUpdate.newCameraPosition(
      CameraPosition(
        target: LatLng(-7.2594, 112.7345),
        zoom: 20.0,
      ),
    ));
  }
}
