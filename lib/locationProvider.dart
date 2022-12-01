import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';

class LocationProvider extends ChangeNotifier{

  double? lon,lat;
  List pl = [];

  void getposition()async
  {
   Position position =  await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
   lon = position.longitude;
   lon = position.latitude;

   notifyListeners();

  }

}
