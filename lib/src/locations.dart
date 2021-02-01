import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:json_annotation/json_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';



class contactPosition{
  int id;
  var name;
  var time;
  LatLng coordinates;
  double distance;

  contactPosition(this.id,this.name, this.time, this.coordinates, this.distance);
}
List<contactPosition> getLocations()  {

  var markerLocations = <contactPosition>[
    contactPosition(1, "Sun Plaza" , "12 Dec 2020 11:50" , LatLng(44.39525566806541, 26.119418297003715) , 20),
    contactPosition(2, "Brancoveanu Metro Station" , "15 Dec 2020 13:34" , LatLng(44.39918057025921, 26.109075699361036) , 15),
    contactPosition(3, "Unirii Metro Station" , "15 Dec 2020 13:52" , LatLng(44.42631038686371, 26.10328212771161) , 10),
    contactPosition(4, "University Politehnica of Bucharest" , "18 Dec 2020 10:28" , LatLng(44.44007740292458, 26.05306580935273) , 50),
    contactPosition(5, "Henri Coanda International Airport" , "22 Dec 2020 18:15" , LatLng(44.571478052057195, 26.077227148288564) , 30),

  ];

  return markerLocations;

}