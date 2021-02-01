import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'judete.dart';
import 'src/locations.dart' as locations;
import 'package:geolocator/geolocator.dart';

class MainPage extends StatelessWidget{

  Position currentLocation;
  Map<String, Marker> _markers = new Map<String,Marker>();
  var markerPositions;


  MainPage(this.currentLocation, this.markerPositions){

    markerPositions = locations.getLocations();
   // _markers.clear();
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
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('COVID19 Contacts Tracker'),
        backgroundColor: Colors.blue,
      ),
      body: GoogleMap(
      //  onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: LatLng(currentLocation.latitude, currentLocation.longitude),
          zoom: 15,
        ),
        markers: _markers.values.toSet(),
        // mapType: MapType.satellite,
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Side Menu'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Lista restrictii judete'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                      return listaJudete();
                    })
                );
                // Update the state of the app
                // ...
                // Then close the drawer
                //Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }



}