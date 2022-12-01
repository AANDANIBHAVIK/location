import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:location/locationProvider.dart';
import 'package:location/locationScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => LocationProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => Location_Screen(),
        },
      ),
    ),
  );
}
