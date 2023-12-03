import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatefulWidget {
  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  // Add a controller for the Google Map
  static final CameraPosition _kGooglePlex = const CameraPosition(
    target: LatLng(32.99289402130326, 74.92505710370095),
    zoom: 14.4746,
  );
  // San Francisco, CA

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: GoogleMap(
        initialCameraPosition: _MapPageState._kGooglePlex,
      ),
    ));
  }
}

void main() => runApp(MaterialApp(
      home: MapPage(),
    ));
