import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'MainPage.dart';
import 'src/locations.dart' as locations;
import 'package:geolocator/geolocator.dart';
import 'package:fluster/fluster.dart';
import 'package:meta/meta.dart';
import 'judete.dart';
void main() {
  runApp(MyApp());
}


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var markerPositions;
  final Map<String, Marker> _markers = {};
  Position currentLocation;
  @override
  void initState(){
    super.initState();
    Geolocator().getCurrentPosition().then((currloc){
      setState(() {
        currentLocation = currloc;
        markerPositions =  locations.getLocations();
      });
    });
  }

  /*Future<void> _onMapCreated(GoogleMapController controller) async {


    final markerPositions = await locations.getLocations();
    setState(() {
      _markers.clear();
      _markers["currentUserPosition"] = Marker(
          markerId: MarkerId("you are here"),
          position: LatLng(currentLocation.latitude, currentLocation.longitude),
          icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
          infoWindow: InfoWindow(title: "your current location", snippet: "you are here",)
      );

      for (final loc in markerPositions) {
        final marker = Marker(
          markerId: MarkerId(loc.name),
          position: LatLng(loc.coordinates.latitude, loc.coordinates.longitude),
          icon: BitmapDescriptor.defaultMarker,
          infoWindow: InfoWindow(
            title: loc.name,
            snippet: "contact distance : "+loc.distance.toString() + " m / " +
                      "contact time : " + loc.time.toString(),
          ),
        );
        _markers[loc.id.toString()] = marker;
      }
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(currentLocation,markerPositions),
    );
  }
}